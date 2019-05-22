class AddColToSearches < ActiveRecord::Migration[5.2]
  def change
    add_column :searches, :size_s, :boolean
    add_column :searches, :size_xs, :boolean
    add_column :searches, :size_m, :boolean
    add_column :searches, :size_l, :boolean
    add_column :searches, :size_xl, :boolean
    
  end
end
