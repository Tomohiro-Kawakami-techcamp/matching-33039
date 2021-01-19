class Profile < ApplicationRecord
  belongs_to :user
  has_many :votes
  has_many :voted_users, through: :votes, source: :user
  has_one_attached :image
  has_many :messages

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :birth
  belongs_to_active_hash :marry
  belongs_to_active_hash :money
  belongs_to_active_hash :school
  belongs_to_active_hash :sex
  belongs_to_active_hash :smoke
  belongs_to_active_hash :drink
  belongs_to_active_hash :live
  belongs_to_active_hash :occupation

  with_options presence: true do
    validates :image
    validates :nickname
    validates :hobby
    validates :birthday
    validates :info
    validates :salary,    numericality: { with: /\A[0-9]+\z/, message: 'Half-width number' }
    end

  with_options numericality: { other_than: 0, message: 'Select'  } do
    validates :birth_id
    validates :school_id
    validates :sex_id 
    validates :smoke_id 
    validates :marry_id
    validates :money_id 
    validates :occupation_id
    validates :drink_id
    validates :live_id 
    end
end