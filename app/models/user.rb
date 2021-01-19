class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :profile, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :voted_profiles, through: :votes, source: :profile
  has_many :messages
  
  def already_voted?(profile)
    self.votes.exists?(profile_id: profile.id)
  end

  def matchers
    profile_ids = votes.pluck(:profile_id)
    liked = voted_profile_ids
    matches = Vote.where(profile_id: liked, voted_profile_id: profile.id)
    if matches.present? && self.votes.exists?(profile_id: liked)
      voted_profiles
    end
  end

  validates :name,      presence: true
  with_options numericality: { other_than: 0, message: 'Select'  } do
    validates :sex_id 
    end
end
