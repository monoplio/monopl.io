# Migration that creates properties tables
class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
