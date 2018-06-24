class User < ApplicationRecord
	has_many :histories
	has_secure_password
	validates :email, uniqueness: true
end
