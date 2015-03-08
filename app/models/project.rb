class Project < ActiveRecord::Base
has_many :pledges
has_many :rewards
accepts_nested_attributes_for :rewards
accepts_nested_attributes_for :pledges
belongs_to :user
end
  