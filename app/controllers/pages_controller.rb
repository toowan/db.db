class PagesController < ApplicationController
	before_action :check_signed_in

	# Redirect to breeder page if user visits / when logged in
	def check_signed_in
	  redirect_to profiles_path if signed_in?
	end

	def index

	end
end
