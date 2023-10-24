class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.numeric :price, precision: 10, scale: 2
      t.integer :quantity

      t.timestamps
    end
  end
end
