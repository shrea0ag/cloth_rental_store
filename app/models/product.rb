class Product < ApplicationRecord
	belongs_to :borrowee
	validates  :borrowee_id, presence: true
	validates  :name, presence: true, length: { in: 6..20 }
	validates  :name, presence: true
	validates  :priceph, presence: true, numericality: true
	validates  :pricepd, presence: true, numericality: true
	# before_save :adding_prefix
	after_commit :size


	def size 
		q = {size_s: size_s, size_xs: size_xs, size_m: size_m, size_l: size_l, size_xl: size_xl}
		q.select{|key, value| value.eql?(true) }.keys.join(',')
	end


end
