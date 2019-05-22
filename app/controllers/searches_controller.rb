class SearchesController < ApplicationController

	def new
		@search = Search.new
	end

	def create
		@search = Search.create(search_params)
		redirect_to @search
	end

	def show
		@search = Search.find(params[:id])
		# debugger 
	end

	private
	def search_params
		params.require(:search).permit(:keywords, :max_price, :min_price, :size_xs, :size_s, :size_m, :size_l, :size_xl)
	end
end
