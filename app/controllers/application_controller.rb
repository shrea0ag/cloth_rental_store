class ApplicationController < ActionController::Base
	devise_group :user, contains: [:borrower, :borrowee]
	before_action :configure_permitted_parameters, if: :devise_controller?
	protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
		end
  end

	protected
	def configure_permitted_parameters 
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :address, :city, :pincode])
		devise_parameter_sanitizer.permit(:action_update, keys: [:name, :phone, :address, :city, :pincode,])
	end
end

