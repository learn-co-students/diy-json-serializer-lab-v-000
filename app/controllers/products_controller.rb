class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def data
    render json: Product.find(params[:id]).to_json
  end

  def inventory
    product = Product.find(params[:id])
    render plain: product.inventory > 0
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
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
