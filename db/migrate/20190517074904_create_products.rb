class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.boolean :size_s
      t.boolean :size_xs
      t.boolean :size_m
      t.boolean :size_l
      t.boolean :size_xl
      t.string :color
      t.integer :priceph
      t.integer :pricepd

      t.timestamps
    end
  end
end
