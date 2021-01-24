class PropertyRelations < ActiveRecord::Migration[6.1]
  def change
    add_reference :properties, :player, foreign_key: true
    add_reference :properties, :property_set, foreign_key: true
  end
end
