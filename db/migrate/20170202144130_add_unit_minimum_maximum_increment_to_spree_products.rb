class AddUnitMinimumMaximumIncrementToSpreeProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_products, :quantity_unit, :string
    add_column :spree_products, :quantity_minimum, :integer
    add_column :spree_products, :quantity_maximum, :integer
    add_column :spree_products, :quantity_increment, :integer
  end
end
