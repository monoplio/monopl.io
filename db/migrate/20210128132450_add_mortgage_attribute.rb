# Add mortgage attribute as integer
class AddMortgageAttribute < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :mortgage, :integer
  end
end
