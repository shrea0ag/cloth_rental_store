class OrderItemsController < ApplicationController
  
	def index
		 @order_items = current_order.order_items
	end

	def create
    @order = current_order
    @item = @order.order_items.new(order_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to order_items_path
  end

  private

  def order_params
    params.require(:order_item).permit(:quantity, :size, :color, :product_id)
  end
end
