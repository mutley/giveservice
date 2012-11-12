class OpportunitiesUser < ActiveRecord::Base
  # Associations
  belongs_to :opportunity
  belongs_to :user
  # attr_accessible :title, :body
end
