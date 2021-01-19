class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :nickname,       null: false
      t.string :hobby,          null: false
      t.date   :birthday,       null: false
      t.integer  :birth_id,     null: false
      t.integer  :school_id,    null: false
      t.integer  :salary,       null: false
      t.integer  :sex_id,       null: false
      t.integer  :smoke_id,     null: false
      t.integer  :marry_id,     null: false
      t.integer  :money_id,     null: false
      t.text  :info,            null: false
      t.references  :user,      foreign_key: true
      t.timestamps
    end
  end
end