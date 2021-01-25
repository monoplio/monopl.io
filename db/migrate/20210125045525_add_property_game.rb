class AddPropertyGame < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :state, :string
  end
end
