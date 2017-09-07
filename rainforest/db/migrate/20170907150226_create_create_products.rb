class CreateCreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :create_products do |t|
      t.string :name
      t.text :description
      t.integer :price_in_cents
      

      t.timestamps
    end
  end
end
