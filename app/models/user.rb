class User < ActiveRecord::Base
  
  extend FriendlyId
  friendly_id :username
  
  has_secure_password
  
  attr_accessible :password, :password_confirmation, :username, :email
  
  validates :username, :uniqueness => true, :format => { :with => /^[a-zA-Z0-9_]+$/ }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, :uniqueness => true
  
end