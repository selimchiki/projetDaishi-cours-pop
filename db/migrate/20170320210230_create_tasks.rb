class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :details
      t.date :limit
      t.integer :level, limit: 1, default: 0
    end
  end
end
