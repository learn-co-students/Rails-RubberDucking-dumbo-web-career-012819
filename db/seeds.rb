10.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
end



Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student: Student.first)
Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student: Student.second)
Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student: Student.fifth)
Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student: Student.fourth)
Duck.create(name: Faker::Dog.meme_phrase, description: Faker::Dog.breed, student: Student.third)
