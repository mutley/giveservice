class Organization < ActiveRecord::Base

  # Associations
  # has_many :opportunities
  has_many :organizations_users
  has_many :users, through: :organizations_users

  # Accessible Attributes
  attr_accessible :description, :title
end
