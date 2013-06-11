class User < ActiveRecord::Base
  attr_accessible :name, :email, :password

  has_and_belongs_to_many :albums

  has_secure_password
end
