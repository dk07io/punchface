class AddIdRewardsAndPledges < ActiveRecord::Migration
  def change
    add_column :rewards, :project_id, :integer
    add_column :pledges, :reward_id, :integer
    add_column :pledges, :user_id, :integer
  end
end
