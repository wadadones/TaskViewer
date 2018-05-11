class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :done
      t.date :plan
      t.float :planTime
      t.date :results
      t.float :resultsTime

      t.timestamps
    end
  end
end
