class ProductsController < ApplicationController
  require 'json'

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

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def data
    product = Product.find(params[:id])
    serialized_product = ProductSerializer.serialize(product)

    render json: serialized_product
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
