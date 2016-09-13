class User < ActiveRecord::Base
	#attr_accessible :email, :name
	private
	def app_params
		params.require(:email, :name)
	end
	has_many :microposts
end
