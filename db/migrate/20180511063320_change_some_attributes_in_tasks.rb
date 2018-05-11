class ChangeSomeAttributesInTasks < ActiveRecord::Migration[5.1]
  def change
  	remove_column :tasks, :plan, :time
  	remove_column :tasks, :result, :time
  	add_column :tasks, :plan1, :time
  	add_column :tasks, :results1, :time
  	add_column :tasks, :plan2, :time
  	add_column :tasks, :results2, :time

  end
end
