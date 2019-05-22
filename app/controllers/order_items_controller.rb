class OrderItemsController < ApplicationController
  def index
		@order_items = current_order.order_items
	end

	def create
    @order = current_order
    @item = @order.order_items.new(order_params)
    if @order.save
      flash[:success] = "Order_Placed"
      session[:order_id] = @order.id
      redirect_to cart_path
    else
      flash[:error] = @order.errors.full_messages.to_sentence
      redirect_to products_path
    end
  end

    def destroy
      @order = current_order
      @item = @order.order_items.find(params[:id])
      @item.destroy
      @order.save
      redirect_to cart_path
    end

    # def log_out
    #   session.delete(:order_id)
    #   @order = nil
    #   redirect_to orders_path
    # end

  private

  def order_params
    params.require(:order_item).permit(:quantity, :size, :color, :product_id, :return_days)
  end  
end
