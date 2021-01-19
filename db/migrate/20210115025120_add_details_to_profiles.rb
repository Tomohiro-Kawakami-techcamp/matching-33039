class AddDetailsToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :occupation_id, :integer
  end
end
