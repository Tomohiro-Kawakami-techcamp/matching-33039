FactoryBot.define do
  factory :profile do
    nickname {"hoge"}
    hobby {"趣味"}
    birthday { "2000-01-01" }
    info {"初めまして"}
    birth_id { 1 }
    school_id { 1 }
    salary { 500 }
    sex_id { 1 }
    smoke_id { 1 }
    marry_id { 1 }
    money_id { 1 }
    occupation_id { 1 }
    drink_id { 1 }
    live_id { 1 }

    association :user

    after(:build) do |profile|
      profile.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
