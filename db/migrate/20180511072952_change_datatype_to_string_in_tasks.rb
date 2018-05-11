class ChangeDatatypeToStringInTasks < ActiveRecord::Migration[5.1]
  def change
  	remove_column :tasks, :plan1, :time
  	remove_column :tasks, :results1, :time
  	remove_column :tasks, :plan2, :time
  	remove_column :tasks, :results2, :time
  	add_column :tasks, :plan1, :string
  	add_column :tasks, :results1, :string
  	add_column :tasks, :plan2, :string
  	add_column :tasks, :results2, :string
  end
end
