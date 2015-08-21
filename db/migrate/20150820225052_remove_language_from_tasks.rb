class RemoveLanguageFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :language, :string
  end
end
