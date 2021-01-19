class Smoke < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'}, 
    {id: 1, name: '吸わない'}, 
    {id: 2, name: '時々吸う'},
    {id: 3, name: '吸う'}
]

  include ActiveHash::Associations
  has_many :profiles
end
