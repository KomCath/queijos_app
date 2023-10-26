class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.integer :quantity
      t.monetize :price, null: false, currency: { default: :BRL }

      t.timestamps
    end
  end
end
