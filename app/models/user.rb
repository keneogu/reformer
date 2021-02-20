class User < ApplicationRecord
	validates :email, :password, presence: true
	validates :username, presence: { message: "must be given please" }
	validates :username, on: :create, uniqueness: {
		# object = person object being validated
		# data = { model: "Person", attribute: "Username", value: <username> }
		message: ->(object, data) do
		  "Hey #{object.username}, #{data[:value]} has already been taken."
		end
	  }
end
