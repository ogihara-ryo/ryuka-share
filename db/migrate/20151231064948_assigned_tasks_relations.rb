class AssignedTasksRelations < ActiveRecord::Migration
  def change
    create_table :assigned_tasks_relations do |t|
      t.references :user, index: true, null: false
      t.references :task, index: true, null: false
    end
  end
end
