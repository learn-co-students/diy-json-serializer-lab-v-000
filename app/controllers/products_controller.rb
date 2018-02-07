class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def inventory
    render plain: set_product.inventory > 0 ? true : false
  end

  def description
    render plain: set_product.description
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def show
    @product = set_product
  end

  def data
    render json: ProductSerializer.serialize(set_product)
  end

  private

  def set_product
    Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
