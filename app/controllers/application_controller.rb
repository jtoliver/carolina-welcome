class ApplicationController < ActionController::Base

	helper :all
	protect_from_forgery
	
	private
	
		def mobile_device?
			user_agent = request.user_agent
			user_agent =~ /Mobile|webOS/
		end
		
		helper_method :mobile_device?
		
		def authenticate
			authenticate_or_request_with_http_basic do |user_name, password|
				user_name == 'carwel' && password == '1q2w3e4r!'
			end
		end
		
end
