class Occupation < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'}, 
    {id: 1, name: '公務員'}, 
    {id: 2, name: 'エンジニア'},
    {id: 3, name: 'アスリート'}, 
    {id: 4, name: '事務職'}, 
    {id: 5, name: '先生・インストラクター'},
    {id: 6, name: '販売職'},
    {id: 7, name: '秘書'},
    {id: 8, name: '弁護士'},
    {id: 9, name: '芸能人・モデル'},
    {id: 10, name: 'マスコミ'},
    {id: 11, name: '販売職'},
    {id: 12, name: 'パイロット'},
    {id: 13, name: '客室乗務員'},
    {id: 14, name: '医師'},
    {id: 15, name: '看護師'},
    {id: 16, name: '作家'},
    {id: 17, name: '保育士'},
    {id: 18, name: 'アナウンサー'},
    {id: 19, name: '経営者'},
    {id: 20, name: 'サラリーマン'},
    {id: 21, name: 'フリーランス'},
    {id: 22, name: '学生'},
    {id: 23, name: '無職'},
    {id: 24, name: 'その他'}
]

  include ActiveHash::Associations
  has_many :profiles
end
