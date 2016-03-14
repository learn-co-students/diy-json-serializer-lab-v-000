# Create a ProductSerializer that serializes all of a product's attributes (name, price, inventory and description) to JSON.
# Create a route and action for /products/:id/data that returns a JSON-serialized product.
# Create the product show page and route. Add a link to the products show page called "Next Product" that will use AJAX to load the data for the next product without refreshing the page.
# Make sure tests pass, including already existing ones!
# Note: The test suite makes use of selenium-webdriver to test the
# AJAX-enabled pages. You will need to have Firefox installed for the
# tests to pass.
class ProductSerializer
  def self.serialize(product)
    serialized_product = '{'


    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"description": "' + product.description + '", '
    serialized_product += '"inventory": ' + product.inventory.to_s + ', '
    serialized_product += '"price": "' + product.price.to_s + '"'

    serialized_product += '}'
  end
end