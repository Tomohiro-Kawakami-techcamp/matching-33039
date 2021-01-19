class Marry < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'}, 
    {id: 1, name: '未婚'}, 
    {id: 2, name: '離婚'}, 
    {id: 3, name: '死別'}
]

  include ActiveHash::Associations
  has_many :profiles
end