class ChangeDefaultInTasks < ActiveRecord::Migration[5.1]
  def change
  	remove_column :tasks, :plan1, :string
  	remove_column :tasks, :plan2, :string
  	add_column :tasks, :plan1, :string, default: nil
  	add_column :tasks, :plan2, :string, default: nil
  end
end
