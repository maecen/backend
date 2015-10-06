require 'faker'

FactoryGirl.define do
  factory :user do
    name {Faker::Name.name}
    email {Faker::Internet.email}
    password 'password'
    password_confirmation 'password'

    factory :creative do
      account_type 'creative'
      phone_number {Faker::PhoneNumber.phone_number}
    end
  end

  factory :project do
    title {Faker::Book.title}
    description {Faker::Lorem.sentence}
  end
end