class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def inventory
    set_product
    render plain: @product.inventory > 0 ? true : false
  end

  def description
    set_product
    render plain: @product.description
  end

  def data
    set_product
    render json: ProductSerializer.serialize(@product)
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def show
    set_product
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
