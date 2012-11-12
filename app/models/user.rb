class User < ActiveRecord::Base

  # Associations
  has_many :organizations_users
  has_many :organizations, through: :organizations_users
  has_many :opportunities_users
  has_many :opportunities, through: :opportunities_users
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
end
