require 'spec_helper'

feature "search for hero" do 
  background do 
    hero = Category.create!(name: "Hero")
    spiderman = Hero.create!(name: "Spiderman", publisher: "Marvel", biography: "Web slinger", category: hero)
  end

  scenario "user searches for hero name" do 
    visit root_path
    within("header") do
      fill_in 'search_term', with: 'spiderman'
      find("button[type='submit']").click
    end
    expect(page).to have_content "Spiderman"
  end 

  scenario "user searches blank entry" do 
    visit root_path
    within("header") do
      fill_in 'search_term', with: ''
      find("button[type='submit']").click
    end
    expect(page).to have_content "Cannot search blank field ..."
  end
end