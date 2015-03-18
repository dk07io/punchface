class ChangeReviewMessageToComment < ActiveRecord::Migration
  def change
    rename_column :reviews, :message, :comment
  end
end
