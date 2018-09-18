class CreateCouples < ActiveRecord::Migration[5.1]
  def change
    create_table :couples do |t|
      t.references :man, index: true, foreign_key: true
      t.references :woman, index: true, foreign_key: true

      t.timestamps
    end
  end
end
