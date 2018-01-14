class CreateProductgroups < ActiveRecord::Migration[5.1]
  def change
    create_table :productgroups do |t|
      t.string :name
      t.string :description
      t.boolean :food_group
      t.integer :min_weight

      t.timestamps
    end
  end
end
