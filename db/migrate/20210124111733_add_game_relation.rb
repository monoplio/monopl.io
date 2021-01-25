# Add game owner relation
class AddGameRelation < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :player, foreign_key: true
  end
end
