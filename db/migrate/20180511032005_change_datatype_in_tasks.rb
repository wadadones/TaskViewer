class ChangeDatatypeInTasks < ActiveRecord::Migration[5.1]
  def change

  	remove_column :tasks, :plan, :date
  	remove_column :tasks, :results, :date
  	remove_column :tasks, :done, :boolean
  	add_column :tasks, :plan, :time, array: true
    add_column :tasks, :results, :time, array: true
    add_column :tasks, :done, :boolean, default: false
  end
end
