class CreateGroupMembersRelations < ActiveRecord::Migration
  def change
    create_table :group_members_relations do |t|
      t.references :user, index: true, foreign_key: true
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
