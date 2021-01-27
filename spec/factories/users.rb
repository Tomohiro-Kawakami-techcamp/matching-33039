FactoryBot.define do
  factory :user do
    email { "sample@sample.co.jp" }
    password {"hoge12"}
    password_confirmation {password}
    name { "山田太郎" }
    sex_id {1}
  end
end
