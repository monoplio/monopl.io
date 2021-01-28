# Add remainig attributes to property
class AddPropertyAttributes < ActiveRecord::Migration[6.1]
  def change
    change_table :properties, bulk: true do |t|
      t.integer :stage
      t.boolean :mortgage
      t.string :state
      t.integer :house_price
    end
  end
end
