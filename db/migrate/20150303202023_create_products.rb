class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :funding_goal
      t.date :start_date
      t.date :end_date
      t.string :photo

      t.timestamps null: false
    end
  end
end
