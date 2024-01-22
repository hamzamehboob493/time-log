# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users_data = [
  { email: 'teacher@techhub.com', username: 'teacher', role: 'teacher', organization_id: 1, password: '123456', password_confirmation: '123456' }
]

organizations_data = [
  { name: 'Tech Hub Inc.', country: 'United States', city: 'San Francisco', address: '123 Tech Street' },
  { name: 'Global Education Foundation', country: 'Canada', city: 'Toronto', address: '456 Learn Avenue' },
  { name: 'Health Innovations Ltd.', country: 'United Kingdom', city: 'London', address: '789 Wellness Lane' },
  { name: 'Green Energy Solutions', country: 'Germany', city: 'Berlin', address: '101 Eco Drive' },
  { name: 'Financial Dynamics Corp.', country: 'Australia', city: 'Sydney', address: '222 Money Street' }
]

organizations_data.each do |organization_data|
  Organization.create!(organization_data)
end

puts "Seed data for organizations created successfully!"

users_data.each do |user_data|
  User.create!(user_data)
end

puts "Seed data for users is created successfully"

lectures_data = [
  { title: 'Introduction to Ruby', user_id: User.last.id },
  { title: 'Web Development Fundamentals', user_id: User.last.id },
  { title: 'Mathematics Basics', user_id: User.last.id },
  { title: 'Environmental Science', user_id: User.last.id },
]

lectures_data.each do |lecture_data|
  Lecture.create!(lecture_data)
end

puts "Seed data for lecture is created successfully"
