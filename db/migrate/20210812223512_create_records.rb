class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.belongs_to :habit, null: false, foreign_key: true
      t.boolean :done

      t.timestamps
    end
  end
end
