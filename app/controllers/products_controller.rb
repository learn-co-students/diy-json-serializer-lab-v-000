class ProductsController < ApplicationController
  before_action :set_product, only: [:description, :inventory, :data]
  def index
    @products = Product.all
  end

  def inventory
    render plain: @product.inventory > 0 ? true : false
  end

  def description
    render plain: @product.description
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def show
    @product = Product.find(params[:id])
  end
   def data
    product = Product.find(params[:id])
    render json: ProductSerializer.serialize(product)
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
