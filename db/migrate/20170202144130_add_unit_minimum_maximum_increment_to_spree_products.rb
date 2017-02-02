class AddUnitMinimumMaximumIncrementToSpreeProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_products, :unit, :string
    add_column :spree_products, :minimum, :integer
    add_column :spree_products, :maximum, :integer
    add_column :spree_products, :increment, :integer
  end
end
