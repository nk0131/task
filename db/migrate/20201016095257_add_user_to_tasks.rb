class AddUserToTasks < ActiveRecord::Migration[6.0]
  def up
    execute 'DELETE FROM taskapps;'
    add_reference :taskapps, :user, null: false, index: true
  end

  def down
    remove_refarence :taskapps, :user, index: true
  end
end
