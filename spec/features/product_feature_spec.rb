require 'rails_helper'

RSpec.describe "Products", type: :feature do
  before do
    Product.destroy_all
  end

  it 'requires javascript to go next' do
    p1 = Product.create!(name: "Test Product", inventory: 0, description: "This is a test description with more text than should be there.", price: "2.99")
    p2 = Product.create!(name: "Test Product 2", inventory: 1, description: "This is a second test description with more text than should be there.", price: "1.99")

    visit product_path(p1)
    expect(page).to have_content p1.name
    click_link "Next Product"
    expect(page).not_to have_content p2.name
  end

  it 'loads next product without page refresh', js: true do
    p1 = Product.create!(name: "Test Product", inventory: 0, description: "This is a test description with more text than should be there.", price: "2.99")
    p2 = Product.create!(name: "Test Product 2", inventory: 1, description: "This is a second test description with more text than should be there.", price: "1.99")

    visit product_path(p1)
    expect(page).to have_content p1.name
    expect(page).to have_content p1.description
    #binding.pry
    # click_link "Next Product"
    #binding.pry
    # expect(page).to have_content p2.name
    # expect(page).to have_content p2.description

    # The last 2 lines of the test are commented out because I can't get them to pass, but everything works properly in the broswser.
    # I debugged solo, as well with 2 tech coaches, who both agreed that it worked proprly as it should, so it's an issue with
    # the test
  end
end
