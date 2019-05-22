class RemoveColFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :priceph, :integer
    remove_column :products, :pricepd, :integer
  end
end
