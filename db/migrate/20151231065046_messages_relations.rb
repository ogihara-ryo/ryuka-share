class CreateMessagesRelations < ActiveRecord::Migration
  def change
    create_table :messages_relations do |t|
      t.references :user, index: true, null: false
      t.references :message, index: true, null: false

      t.timestamps null: false
    end
  end
end
