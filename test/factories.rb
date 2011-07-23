Factory.define :user do |user|
  user.sequence(:username) { |n| "condr_#{n}" }
  user.sequence(:email) { |n| "test_#{n}@example.com" }
  user.password "secret"
end
