# Add action type and data field to action
class AddActionType < ActiveRecord::Migration[6.1]
  def change
    remove_column :actions, :name, :string
    change_table :actions, bulk: true do |t|
      t.string :action_type
      t.integer :data_field
    end
  end
end
