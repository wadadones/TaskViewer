class CreateMen < ActiveRecord::Migration[5.1]
  def change
    create_table :men do |t|

      t.timestamps
    end
  end
end
