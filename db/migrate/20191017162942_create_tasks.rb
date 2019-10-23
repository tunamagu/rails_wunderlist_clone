class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :done, default: false
      t.text :memo
      t.datetime :limit_at

      t.timestamps
    end
  end
end
