Fabricator(:hero) do  
  name      { Faker::Name.name }
  publisher { Faker::Lorem.word }
  biography { Faker::Lorem.sentence }
  category  { Fabricate(:category) }
end