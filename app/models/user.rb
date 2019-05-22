class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates  :name,:email,:phone,:address,:city,:pincode, presence: true
  validates  :phone, numericality: true, length: {is: 10}
  validates  :address, length: {maximum: 60}
  validates  :pincode, length: {is: 6}


end
