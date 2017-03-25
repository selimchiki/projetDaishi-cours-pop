class AddLevelToTasks < ActiveRecord::Migration[5.0]
  def change
    add_reference :tasks, :level, foreign_key: true
  end
end
