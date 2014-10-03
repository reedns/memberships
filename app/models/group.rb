class Group < ActiveRecord::Base
  has_many :member_associations
  has_many :users, through: :member_associations
end
