class AddNameToMan < ActiveRecord::Migration[5.1]
  def change
  	add_column :men, :name, :string
  end
end
