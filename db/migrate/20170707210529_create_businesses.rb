class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.integer :budget
      t.integer :current_stage
      t.date :date_end

      t.timestamps
    end
  end
end
