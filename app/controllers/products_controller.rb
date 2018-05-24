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
    render json: product.description
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def data
    prod = Product.find_by(id: params[:id])
    render json: ProductSerializer.serialize(prod)
  end

  def next_record_id
    prod = Product.find_by(id: params[:id])
    render plain: prod.next_record_id
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
