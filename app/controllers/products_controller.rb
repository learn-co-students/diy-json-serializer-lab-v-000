class ProductsController < ApplicationController
  before_action :current_product, only: [:show, :data]

  def index
    @products = Product.all
  end

  def show

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
    render json: "#{ProductSerializer.serialize(@product)}"
  end

  private

  def current_product
    @product = Product.find(params["id"])
  end

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
