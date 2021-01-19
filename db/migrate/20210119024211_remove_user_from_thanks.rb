class RemoveUserFromThanks < ActiveRecord::Migration[6.0]
  def change
    remove_reference :thanks, :user, null: false, foreign_key: true
  end
end
