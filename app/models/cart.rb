class Cart < ApplicationRecord

	def items_count
  	order.items.sum(:quantity)
  end
end
