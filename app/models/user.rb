class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :member_associations
  has_many :groups, through: :member_associations

  def belongs_to_group?(group)
    groups.include?(group)
  end
end
