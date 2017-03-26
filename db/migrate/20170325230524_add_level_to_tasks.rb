class AddLevelToTasks < ActiveRecord::Migration[5.0]
  def change
    add_reference :tasks, :level
  end
end
