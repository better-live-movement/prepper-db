class CreateEntities < ActiveRecord::Migration[5.1]
  def change
    create_table :entities do |t|
      t.integer :product_id
      t.date :best_before_date
      t.integer :storage_location_id

      t.timestamps
    end
  end
end
