class AddVoteProfileIdToThanks < ActiveRecord::Migration[6.0]
  def change
    add_column :thanks, :vote_profile_id, :integer
  end
end
