class ProductsController < ApplicationController
  before_action :authenticate_user! 

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = current_user.products.build(product_params)
  	if @product.save
     flash[:success] = "Product Added"
  	 redirect_to borrowees_path(@borrowee)
    else
      render 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
  end

  def destroy
    @product = current_user.products.find_by(id: params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
  	params.require(:product).permit(:name, :size_s, :size_xs, :size_m, :size_l, :size_xl, :color, :priceph, :pricepd)
  end
end
