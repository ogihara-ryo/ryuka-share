class CreateAssignedTasksRelations < ActiveRecord::Migration
  def change
    create_table :assigned_tasks_relations do |t|
      t.references :user, index: true, null: false
      t.references :task, index: true, null: false

      t.timestamps null: false
    end
  end
end
