class CreateTaskapps < ActiveRecord::Migration[6.0]
  def change
    create_table :taskapps do |t|
      t.string :name, null: false
      t.text :text

      t.timestamps
    end
  end
end
