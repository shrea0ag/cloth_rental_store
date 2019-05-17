class Borrowee < User
	has_many :products, dependent: :destroy
end
