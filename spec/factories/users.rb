FactoryBot.define do
  factory :user do

    trait :with_valid_an_email do
      email { Faker::Internet.email }
      password 'qwerty123'
    end

    trait :with_nil_an_email do
      email nil
      password 'testing'
    end

    trait :with_mixing_capitalize_email do
      email "ArIEf@gmAil.COM"
      password 'testing'
    end
  end
end
