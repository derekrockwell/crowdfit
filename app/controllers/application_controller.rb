class ApplicationController < ActionController::Base
	before_filter :generate_uservoice_token
	protect_from_forgery



	def after_sending_reset_password_instructions_path_for(resource_name)
		new_user_session_path
	end


	def generate_uservoice_token
		if user_signed_in?
		 # If you're acme.uservoice.com then this value would be 'acme'
		 subdomain = "crowdfit"
	      # Get this from your UserVoice General Settings page    
	      sso_key = "4a8eb284626da52c0f407ef6be2204b4"
	      
	      @current_sso_token =  UserVoice.generate_sso_token(subdomain, sso_key, {
	      	:email => current_user.email,
	      	:guid => current_user.id,
	      	:display_name => current_user.name 
	    }, 300) # Default expiry time is 5 minutes = 300 seconds
	  end

	end

end
