FactotyBot.define do
  factory :user do
    sequence(:name) { |n| "clint#{n}"}
    sequence(:email) { |n| "clint#{n}test.com"}
    password { '12345' }
    password_confirmation { '12345' }
  end
end