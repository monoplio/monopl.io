# Create utility model
class CreateUtilities < ActiveRecord::Migration[6.1]
  def change
    create_table :utilities do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
