class Group < ActiveRecord::Base
  has many :memberships
  has_many :users, through: :memberships
end
