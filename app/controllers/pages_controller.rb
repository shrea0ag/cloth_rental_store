class PagesController < ApplicationController
	before_action :my_authentication
  
  def index
  end

  private
  def my_authentication
  	if borrowee_signed_in?
  	 redirect_to borrowees_path
  	
    elsif borrower_signed_in?
  	 redirect_to products_path
  	else
  	 	render 'pages/index'
  	end
  end

end
