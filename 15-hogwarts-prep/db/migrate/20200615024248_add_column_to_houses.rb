class AddColumnToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :points, :integer, default: 150
  end
end
