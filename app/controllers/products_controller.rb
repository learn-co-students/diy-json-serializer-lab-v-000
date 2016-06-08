class ProductsController < ApplicationController
  before_action :find_product, only: [:data, :inventory, :description, :show]
  def index
    @products = Product.all
  end

  def data
    render json: ProductSerializer.serializer(@product)
  end

  def show
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

  private

  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
