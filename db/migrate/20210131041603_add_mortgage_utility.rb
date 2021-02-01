# Add mortgage to utility + more
class AddMortgageUtility < ActiveRecord::Migration[6.1]
  def change
    add_column :utilities, :mortgage, :integer
    add_column :players, :last_roll, :integer
  end
end
