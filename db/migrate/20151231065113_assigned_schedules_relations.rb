class CreateAssignedSchedulesRelations < ActiveRecord::Migration
  def change
    create_table :assigned_schedules_relations do |t|
      t.references :user, index: true, null: false
      t.references :schedule, index: true, null: false

      t.timestamps null: false
    end
  end
end
