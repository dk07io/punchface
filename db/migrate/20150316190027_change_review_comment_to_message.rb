class ChangeReviewCommentToMessage < ActiveRecord::Migration
  def change
    rename_column :reviews, :comment, :message
  end
end
