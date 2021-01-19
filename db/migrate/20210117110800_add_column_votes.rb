class AddColumnVotes < ActiveRecord::Migration[6.0]
  def change
    add_column :votes, :voted_profile_id, :integer
  end
end