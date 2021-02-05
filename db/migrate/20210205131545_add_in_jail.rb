# Add in jail migration
class AddInJail < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :in_jail, boolean
  end
end
