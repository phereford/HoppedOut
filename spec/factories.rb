FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "user#{n}" }
    sequence(:email) { |n| "email#{n}@gmail.com" }
    password 'passw0rd'
    password_confirmation 'passw0rd'
  end
end
