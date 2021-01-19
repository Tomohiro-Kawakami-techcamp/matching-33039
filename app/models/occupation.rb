class Occupation < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'}, 
    {id: 1, name: '公務員'}, 
    {id: 2, name: 'エンジニア'},
    {id: 3, name: 'アスリート'}, 
    {id: 4, name: '事務職'}, 
    {id: 5, name: '先生・インストラクター'},
    {id: 6, name: '販売職'}, 
    {id: 7, name: 'その他'}
]

  include ActiveHash::Associations
  has_many :profiles
end
