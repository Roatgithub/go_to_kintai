class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.datetime :start_at
      t.datetime :end_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :attendances, [:user_id, :created_at], unique: true
  end
end
