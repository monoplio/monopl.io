class AddActionReference < ActiveRecord::Migration[6.1]
  def change
    add_reference :utilities, :action, foreign_key: true
    add_reference :action_tiles, :action, foreign_key: true
    add_reference :cards, :action, foreign_key: true
  end
end
