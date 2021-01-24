# Create property set model
class CreatePropertySets < ActiveRecord::Migration[6.1]
  def change
    create_table :property_sets do |t|
      t.string :color
      t.integer :bonus

      t.timestamps
    end
  end
end
