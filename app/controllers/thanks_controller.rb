class ThanksController < ApplicationController
  
  def index
    @thanks = Thank.where(profile_id: current_user.profile.id).or(Thank.where(vote_profile_id: current_user.profile.id))
  end
  
  def create
    
  end
end