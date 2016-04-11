class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.date :due_date
      t.boolean :is_complete
      t.integer :member_id

      t.timestamps null: false
    end
  end
end
