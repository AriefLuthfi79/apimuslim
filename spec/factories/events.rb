FactoryBot.define do
  factory :event do
    user
    name Faker::Name.name
    description "Lorem ipsum sit amet test awks"
    start_at Time.use_zone('Jakarta') { Time.now.to_datetime }
    end_at Time.use_zone('Jakarta') { 2.hours.from_now.to_datetime }
  end
end
