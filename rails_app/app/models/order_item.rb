class OrderItem < ActiveRecord::Base
  belongs_to :book_id
  belongs_to :order_id
end
