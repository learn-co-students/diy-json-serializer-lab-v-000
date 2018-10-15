class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def inventory
    product = Product.find(params[:id])
    render plain: product.inventory > 0 ? true : false
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

  def data # get '/products/:id/data' => 'products#data'
    product = Product.find(params[:id])
    render json: ProductSerializer.serialize(product)
  end
  # ProductSerializer.serialize(product) returns serialized product instance, i.e.,
  # returns JSON string of the JSON object representing the product instance
  # Use render json: b/c it returns plain-text string, but we must tell requestor that
  # it's a properly formatted JSON string, so that we can operate on it with JS
  # When I create a new product that successfully saves to the DB (let's say id = 4)
  # and navigate to "/products/4/data",
  # my JSON response looks like this:
  # {
  #  "id": 4,
  #  "name": "yellow highlighter",
  #  "price": 3,
  #  "inventory": 20,
  #  "description": "dispenses bright canary-yellow ink that makes words on the page more salient"
  # }
  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
