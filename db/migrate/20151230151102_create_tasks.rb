class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :author_id, index: true, foreign_key: true
      t.integer :category_id, index: true, foreign_key: true
      t.string :title
      t.text :description
      t.integer :priority

      t.timestamps null: false
    end
  end
end
