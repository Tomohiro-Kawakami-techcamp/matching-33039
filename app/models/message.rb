class Message < ApplicationRecord
  belongs_to :profile
  belongs_to :thank

  validates :comment,      presence: true
end
