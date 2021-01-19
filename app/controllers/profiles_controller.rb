class ProfilesController < ApplicationController
  def index
    if current_user.sex_id == 1
      @profiles = Profile.where(sex_id: 2).shuffle
    else
      @profiles = Profile.where(sex_id: 1).shuffle
    end
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if current_user.sex_id != @profile.sex_id
      render :new
    else
      if @profile.save
        redirect_to  profiles_path
      else
        render :new
      end
    end
  end

  def show
    @profile = Profile.find(params[:id])
    @users = @profile.voted_users.order("created_at DESC")
    @vote = Vote.new
  end

  def edit
    if params[:id].to_i == current_user.profile.id
      @profile = Profile.find(params[:id])
    else
      redirect_to  profiles_path
    end
  end

  def update
    if @profile.update(profile_params)
      redirect_to  profiles_path
    else
      render :edit
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    if user_signed_in? && current_user.id == @profile.user_id
      @profile.destroy
      redirect_to  root_path
    else
      render :index
    end
  end

  def profile_params
    params.require(:profile).permit(:image, :nickname, :hobby, :birthday, :birth_id, :school_id, :salary, :sex_id, :smoke_id, :marry_id, :money_id, :info, :occupation_id, :drink_id, :live_id).merge(user_id: current_user.id)
  end
end
