class RemoveVoteFromMessage < ActiveRecord::Migration[6.0]
  def change
    remove_reference :messages, :vote, null: false, foreign_key: true
  end
end
