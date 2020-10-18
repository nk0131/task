class ChangeTasksNameNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :taskapps, :name, false
  end
end
