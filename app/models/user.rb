class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :password, length: {minimum: 3}
  validates :password, confirmation: true
  validates :password_confirmation, presence:true
  validates :email, uniqueness: true
  
  has_many :pledges
  has_many :rewards
  has_many :backed_projects, through: :pledges, class_name:'Project'
  has_many :reviews
end
