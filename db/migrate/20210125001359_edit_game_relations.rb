# Edit the relation
class EditGameRelations < ActiveRecord::Migration[6.1]
  def change
    remove_reference :games, :player, foreign_key: true
    add_reference :games, :owner, index: true
  end
end
