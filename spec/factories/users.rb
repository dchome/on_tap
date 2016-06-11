require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.username { Faker::App.name }
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.email { email = Faker::Internet.email }
    f.email_confirmation { email}
    f.password { Faker::Internet.password(8, 10) }
    f.address_line_1 { Faker::Address.street_address }
    f.address_line_2 { Faker::Address.secondary_address }
    f.city { Faker::Address.city }
    f.state { Faker::Address.state_abbr }
    f.zip { Faker::Address.zip.to_i }
    f.photo_url { Faker::Avatar.image }
  end
end
