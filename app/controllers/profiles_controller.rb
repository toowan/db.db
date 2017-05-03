class ProfilesController < ApplicationController
  before_action :authenticate_user!


	def new
		@profile = Profile.new
	end

  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      redirect_to profiles_path
    else
      render action: :new
    end
  end

  # GET to /profiles/:id/edit
  def edit 
    @profile = Profile.find(params[:id])
  end

  # PATCH/PUT to /profile/:id
  def update
    # Retrieve user from database
    @profile = Profile.find(params[:id])
    # Mass assign edited profile attributes and save/update
    if @profile.update_attributes(profile_params)
      flash[:success] = "Profile updated!"
      # Redirect user to their profile page
      redirect_to root_path
    else
      # Otherwise, take them back to the edit action
      render action: :edit
    end
  end

  def index
  end


  private
    def profile_params
      params.require(:profile).permit(:breeder_name, :dog_breed, :phone_number, :email, :website)
    end

end