class Reward < ActiveRecord::Base
  has_many :pledges
  belongs_to :user
  belongs_to :project

  def remaining
    pledge_limit - pledges.count
  end

end
