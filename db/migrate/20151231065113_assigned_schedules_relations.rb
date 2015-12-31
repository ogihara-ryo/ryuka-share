class AssignedSchedulesRelations < ActiveRecord::Migration
  def change
    create_table :assigned_schedules_relations do |t|
      t.references :user, index: true, null: false
      t.references :schedule, index: true, null: false
    end
  end
end
