class AddRefrenceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :borrowee, foreign_key: true
  end
end
