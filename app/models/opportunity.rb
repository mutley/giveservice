class Opportunity < ActiveRecord::Base

  # Associations
  belongs_to :organization
  has_many :opportunities_users
  has_many :users, through: :opportunities_users

  # Accessible Attributes
  # attr_accessible :duration, :title
end
