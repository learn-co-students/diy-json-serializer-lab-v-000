class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def inventory
    product = set_product
    render plain: product.inventory.to_i!=0
  end

  def description
    product = set_product
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

  end

  def data
    render json: ProductSerializer.serialize(set_product)
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
