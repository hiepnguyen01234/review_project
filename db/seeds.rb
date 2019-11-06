10.times do |n|
  name  = Faker::Name.name
  email = "test#{n+1}@test.com"
  password = "password"
  User.create! name:  name,
    email: email,
    gender: Faker::Gender.binary_type,
    birthday: Faker::Date.between(from: 50.years.ago,to: 10.years.ago),
    password: password,
    password_confirmation: password
end
