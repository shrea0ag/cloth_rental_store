class ProductsController < ApplicationController
  def index
    # @products = Product.all
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.new(product_params)
  	@product.save
  	redirect_to @product
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
  end

  private
  def product_params
  	params.require(:product).permit(:name, :size_s, :size_xs, :size_m, :size_l, :size_xl, :color, :priceph, :pricepd)
  end
end
