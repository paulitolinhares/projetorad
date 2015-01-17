class OrderController < ApplicationController
	# before_action 
	def new
		@order = Order.new
	end

	private
	#callback
	def set_order
		@order = Order.find(params[:id])
	end

	#param security
	def order_params
		params.require(:order).permit(:book_id, :quantity)
	end

end
