class AddNameToWoman < ActiveRecord::Migration[5.1]
  def change
  	add_column :women, :name, :string
  end
end
