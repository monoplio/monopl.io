# Removes mortgage boolean
class EditMortgageAttribute < ActiveRecord::Migration[6.1]
  def change
    remove_column :properties, :mortgage, :boolean
  end
end
