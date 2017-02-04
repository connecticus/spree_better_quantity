class AddDefaultValuesToQuantityAttrsInSpreeProducts < ActiveRecord::Migration[5.0]
  def change
    change_column :spree_products, :quantity_unit, :string, :default => "un"
    change_column :spree_products, :quantity_minimum, :integer, :default => 1
    change_column :spree_products, :quantity_increment, :integer, :default => 1
  end
end
