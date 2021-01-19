class Drink < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'}, 
    {id: 1, name: '飲まない'}, 
    {id: 2, name: '付き合い程度'},
    {id: 3, name: '飲む'}
]

  include ActiveHash::Associations
  has_many :profiles
end
