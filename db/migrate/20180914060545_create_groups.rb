class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
    	add_column :man, :name, :string
     	t.timestamps
    end
  end
end
