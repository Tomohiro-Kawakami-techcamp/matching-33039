class AddColumnProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :drink_id, :integer
  end
end
