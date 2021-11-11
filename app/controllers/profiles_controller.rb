class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
  end

  def index
    @users = User.all
    @profile = Profile.all
  end
  def show
    @user = User.find(params[:id])
  end
  private
    def profile_params
      params.require(:profile).permit(:user_id, :age, :address)
    end
end
