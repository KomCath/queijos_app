class ChangeColumnInProducts < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :quantity, :boolean, default: true, using: 'quantity::boolean'
    rename_column :products, :quantity, :available
  end
end
