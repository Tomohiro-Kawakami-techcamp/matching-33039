class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.references  :user,      foreign_key: true
      t.references  :profile,      foreign_key: true
      t.timestamps
    end
  end
end
