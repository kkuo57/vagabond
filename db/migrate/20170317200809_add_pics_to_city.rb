class AddPicsToCity < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :pic, :string
  end
end
