class RemoveFrameworkFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :framework, :string
  end
end
