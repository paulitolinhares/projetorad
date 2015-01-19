class OrderController < ApplicationController
	before_action :set_order [:show]

	def index
		@orders = current_user.orders
	end

	def new
		@order = Order.new
		@order.save
		session[:current_order] = @order.id
	end

	def show
	end

	def finish
		@order.save
		session[:current_order] = nil
	end

	def add_item
		book = Book.find(params[:book_id])
		quantity = params[:quantity]

		item = OrderItem.new
		item.book = book
		item.quantity = quantity

		@order.order_items << item

		@order.save
	end

	private
	#callback
	def set_order
		@order = Order.find(session[:current_order])
	end

	#param security
	def order_params
		params.require(:order).permit(:book_id, :quantity)
	end

end
