class VotesController < ApplicationController
  def create
    @vote = current_user.votes.create(profile_id: params[:profile_id], voted_profile_id: current_user.profile.id)
    @select_vote = Vote.where(profile_id: current_user.profile.id, voted_profile_id: params[:profile_id])
    if @select_vote.present?
      @thank = Thank.create(profile_id: params[:profile_id], vote_profile_id: current_user.profile.id)
    end
    redirect_to profiles_path
  end
end