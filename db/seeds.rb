require 'faker'

5.times do |topic|
  Topic.create!(
    title: Faker::Hacker.abbreviation
  )
end

20.times do |blog|
  Blog.create!(
    title: Faker::DumbAndDumber.quote,
    body: Faker::Hipster.paragraph,
    topic_id: rand(1..5)
  )
end

puts "#{Faker::DumbAndDumber.quote}"

5.times do |skill|
  Skill.create!(
    title: Faker::ProgrammingLanguage.name,
    percent_utilized: Faker::Number.between(10,100)
  )
end

puts "#{Faker::DumbAndDumber.quote}"

6.times do |portfolio|
  Portfolio.create!(
    title: Faker::Hacker.say_something_smart,
    subtitle: "Ruby on Rails",
    body: Faker::Hipster.paragraph,
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
  )
end

3.times do |portfolio|
  Portfolio.create!(
    title: Faker::Hacker.say_something_smart,
    subtitle: "Node.js",
    body: Faker::Hipster.paragraph,
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
  )
end

3.times do |portfolio|
  Portfolio.create!(
    title: Faker::Hacker.say_something_smart,
    subtitle: "React.js",
    body: Faker::Hipster.paragraph,
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
  )
end

3.times do |technology|
  Technology.create!(
    name: "Technology #{technology}",
    portfolio_id: rand(1..3)
  )
end

puts "#{Faker::DumbAndDumber.quote}"