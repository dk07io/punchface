class Pledge < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  belongs_to :reward

  validate :pledge_can_be_created

  def pledge_can_be_created
    errors.add(:id, "Too many pledges!") if reward.remaining <= 0
  end

end
