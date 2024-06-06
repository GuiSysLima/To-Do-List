class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.boolean :finished
      t.datetime :due_date
      t.string :priority
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
