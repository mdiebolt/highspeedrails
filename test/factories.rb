Factory.define :user do |user|
  user.sequence(:username) { |n| "condr_#{n}" }
  user.sequence(:email) { |n| "test_#{n}@example.com" }
  user.password "secret"
end

Factory.define :competition do |competition|
  competition.start_date DateTime.new(2011, 5, 5)
end

Factory.define :submission do |submission|
  submission.name "First Chill App"
  submission.url "http://www.fca.info"

  submission.competition { Factory :competition }
end
