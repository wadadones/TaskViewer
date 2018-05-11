class ChangePlanTimeToStringInTasks < ActiveRecord::Migration[5.1]
  def change
  	remove_column :tasks, :planTime, :float
  	add_column :tasks, :planTime, :string
  end
end
