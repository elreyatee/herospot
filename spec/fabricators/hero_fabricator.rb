Fabricator(:hero) do 
  id        { Faker::Number.number(1)} 
  name      { Faker::Name.name }
  publisher { Faker::Lorem.word }
  biography { Faker::Lorem.paragraph(7) }
  category  { Fabricate(:category) }
end