require 'faker'

FactoryGirl.define do
  factory :itinerary do |f|
    f.name { Faker::Team.name }
    f.description { Faker::Lorem.sentence}
    f.start_time { Faker::Time.between(1.days.from_now, 2.days.from_now) }
    f.end_time { Faker::Time.between(2.days.from_now, 3.days.from_now) }
    f.photo_url { Faker::Avatar.image }
  end
end
