class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  	# Redirects to breeder page after signing in 
	def after_sign_in_path_for(resource)
		profiles_path
	end


end


