class RemoveVoteFromSorries < ActiveRecord::Migration[6.0]
  def change
    remove_reference :thanks, :vote, foreign_key: true
  end
end
