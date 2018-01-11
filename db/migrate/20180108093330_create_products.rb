class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :manufacturer_id
      t.integer :barcode
      t.integer :weight
      t.integer :productgroup_id

      t.timestamps
    end
  end
end
