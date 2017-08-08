class ProductsController < ApplicationController

  before_action :get_product, only: [:inventory, :description, :show, :data]
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

  def data
    render json: ProductSerializer.serialize(@product)
  end

  def show

  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end

  def get_product
    @product = Product.find(params[:id])
  end
end
