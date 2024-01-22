class CreateWorkLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :work_logs do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.belongs_to :user, null: false
      t.belongs_to :lecture, null: false
      t.timestamps
    end
  end
end
