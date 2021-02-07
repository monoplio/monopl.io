# Add color attribute to players
class AddColorAttribute < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :color, :string
  end
end
