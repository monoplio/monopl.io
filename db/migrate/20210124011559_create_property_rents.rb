# Create property rents model
class CreatePropertyRents < ActiveRecord::Migration[6.1]
  def change
    create_table :property_rents do |t|
      t.integer :stage
      t.integer :rent
      t.references :property

      t.timestamps
    end
  end
end
