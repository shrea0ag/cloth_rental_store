class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  attr_reader :return_days
  # before_save :days_to_return_date
  

  # def days_to_return_date
  # 	self.return_date = Date.today + return_days.to_i
  # end
  def return_days=(days)
  	self.return_date = Date.today + days.to_i
  end

 
end




#
