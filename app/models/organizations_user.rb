class OrganizationsUser < ActiveRecord::Base

  # Associations
  belongs_to :organization
  belongs_to :user
  
  # Accessible Attributes
  attr_accessible :organization_id, :user_id
end
