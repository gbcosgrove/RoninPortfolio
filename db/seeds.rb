require 'faker'

10.times do |blog|
  Blog.create!(
    title: Faker::DumbAndDumber.character,
    body: Faker::DumbAndDumber.quote
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

9.times do |portfolio|
  Portfolio.create!(
    title: Faker::Commerce.product_name,
    subtitle: Faker::Commerce.material,
    body: Faker::Hipster.paragraph,
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
  )
end

puts "#{Faker::DumbAndDumber.quote}"