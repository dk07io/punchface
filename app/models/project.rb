class Project < ActiveRecord::Base
  has_many :pledges
  has_many :rewards
  accepts_nested_attributes_for :rewards, reject_if: :all_blank, allow_destroy: true
  # accepts_nested_attributes_for :pledges
  belongs_to :user
  has_many :comments


  def total_pledged
    pledges.sum(:amount)    
  end
end
