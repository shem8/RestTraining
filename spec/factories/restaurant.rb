require 'faker'

FactoryGirl.define do
  factory :restaurant do |rest|
    rest.name Faker::Company.name
    rest.genre Faker::Lorem.word
    rest.rating Faker::Number.between(0, 3)
    rest.accept_10bis Faker::Boolean.boolean
    rest.address Faker::Address.street_address
    rest.delivery_time Faker::Number.number(2)
  end
end