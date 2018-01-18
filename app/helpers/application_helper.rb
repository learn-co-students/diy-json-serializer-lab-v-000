module ApplicationHelper

  def available?(product)
    product.inventory > 0 ? "Available" : "Sold Out"
  end
end
