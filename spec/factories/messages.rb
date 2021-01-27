FactoryBot.define do
  factory :message do
    comment {"よろしくお願いします。"}
    association :profile
    association :thank
  end
end
