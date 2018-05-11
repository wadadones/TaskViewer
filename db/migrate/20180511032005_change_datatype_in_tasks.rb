class ChangeDatatypeInTasks < ActiveRecord::Migration[5.1]
  def change
  	change_column :tasks, :plan, :time
    change_column :tasks, :results, :time
    change_column :tasks, :done, :boolean, default: false
  end
end
