class AddColToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :return_date, :date
  end
end
