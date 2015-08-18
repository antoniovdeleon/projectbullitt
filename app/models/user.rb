class User < ActiveRecord::Base
	has_secure_password
	has_many :npos
  has_many :projects
  has_many :tasks, through: :projects
end
