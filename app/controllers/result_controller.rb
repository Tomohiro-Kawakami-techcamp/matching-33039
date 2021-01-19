class ResultController < ApplicationController
  def index
    if params[:profile_id].to_i == current_user.profile.id
      @profile = Profile.find(params[:profile_id])
      @users = @profile.voted_users.order("created_at DESC")
    else
      redirect_to profiles_path
    end
  end
end
