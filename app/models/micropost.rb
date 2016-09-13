class Micropost < ActiveRecord::Base
#attr_accessible :content, :user_id
private
	def app_params
		params.require(:content, :user_id)
	end
belongs_to :user

validates :content, :length => { :maximum => 140 }
end
