class AddLiveIdToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :live_id, :integer
  end
end
