class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :author_id, index: true, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
