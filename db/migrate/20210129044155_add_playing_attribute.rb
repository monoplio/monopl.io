# Add playing boolean to player model
class AddPlayingAttribute < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :is_playing, :boolean
  end
end