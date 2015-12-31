class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :author_id, index: true, foreign_key: true
      t.integer :category_id, index: true, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
