class Thank < ApplicationRecord
  belongs_to :profile
  has_many :messages

  validates :vote_profile_id,   presence: true
end
