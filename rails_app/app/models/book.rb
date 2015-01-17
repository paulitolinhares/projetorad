class Book < ActiveRecord::Base
  belongs_to :author
  has_many :order_items
  has_many :orders, through: :order_items

  validates_presence_of :title, :description
end
