class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :title, null: false
      t.date :schedule_date, null: false
      t.text :description
      t.boolean :finished, default: false

      t.timestamps null: false
    end
  end
end
