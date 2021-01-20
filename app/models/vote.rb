class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :profile
  validates_uniqueness_of :profile_id, scope: :user_id

  validates :voted_profile_id,   presence: true
end
