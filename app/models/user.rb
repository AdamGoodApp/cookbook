class User < ActiveRecord::Base
	has_secure_password
	validates :email, presence: true, uniqueness: true

  	attr_accessible :email, :password, :password_confirmation

  	# before_save :role_for_user

def role?(role)
	self.role == role
end


# private
# 	def role_for_user
# 		self.role = "basic_user"
# 	end
end