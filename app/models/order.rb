class Order < ApplicationRecord
	has_many :order_items
	belongs_to :borrower
	before_save :update_total
  before_save :update_status

  def calculate_total
    self.order_items.map { |item| item.product.price * item.quantity * (item.return_date - Date.today)  }.sum
  end

  private

  def update_status
  	self.status = "Cart"
  end

  def update_total
    self.total_price = calculate_total
  end
end
