class MonetizeProduct < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :price
    add_monetize :products, :price,
      null: false,
      currency: { default: :BRL }
  end
end
