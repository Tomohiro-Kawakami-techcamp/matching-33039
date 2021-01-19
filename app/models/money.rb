class Money < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'}, 
    {id: 1, name: '無料会員'}, 
    {id: 2, name: '有料会員'}
]

  include ActiveHash::Associations
  has_many :profiles
end
