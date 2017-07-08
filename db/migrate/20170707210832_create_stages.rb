class CreateStages < ActiveRecord::Migration[5.0]
  def change
    create_table :stages do |t|
      t.string :name
      t.integer :budget_stage
      t.belongs_to :business, foreign_key: true

      t.timestamps
    end
  end
end
