require 'faker'

FactoryGirl.define do
  factory :activity do |f|
    f.name { Faker::Company.name }
    f.description { Faker::Lorem.sentence}
    f.address_line_1 { Faker::Address.street_address }
    f.address_line_2 { Faker::Address.secondary_address }
    f.city { Faker::Address.city }
    f.state { Faker::Address.state_abbr }
    f.zip { Faker::Address.zip.to_i }
    f.photo_url { Faker::Avatar.image }
  end
end
