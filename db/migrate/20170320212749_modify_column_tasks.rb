class ModifyColumnTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :check, :integer, limit: 1, default: 0
    change_column :tasks, :level, :string
  end
end
