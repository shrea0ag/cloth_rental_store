class AddForeignkeyToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :borrower, foreign_key: true
  end
end
