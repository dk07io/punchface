class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.belongs_to :proejct
      t.text :description
      t.integer :pledge_limit
      t.integer :amount

      t.timestamps null: false
    end
  end
end
