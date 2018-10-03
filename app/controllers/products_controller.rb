class ProductsController < ApplicationController
  def index
    @products = Product.all
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

  def show
    set_product
  end

  def data
    set_product
    render json: ProductSerializer.serialize(@product)
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end

  def set_product
    @product = Product.find_by(id: params[:id])
  end
end
