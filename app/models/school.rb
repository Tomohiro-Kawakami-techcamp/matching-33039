class School < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'}, 
    {id: 1, name: '中学卒'}, 
    {id: 2, name: '高校卒'},
    {id: 3, name: '短大卒'}, 
    {id: 4, name: '専門学校卒'}, 
    {id: 5, name: '高専卒'},
    {id: 6, name: '大学卒'}, 
    {id: 7, name: '大学院卒'}
]

  include ActiveHash::Associations
  has_many :profiles
end
