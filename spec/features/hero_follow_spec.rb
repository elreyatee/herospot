require 'spec_helper'

feature "see hero show page" do 
  scenario "user follows hero" do 
    hero = Category.create!(name: "Hero")
    spiderman = Hero.create!(name: "Spiderman", publisher: "Marvel", biography: "Web slinger", category: hero)
    sign_in
    visit hero_path(spiderman)
    click_button "Follow"
    expect(page).to have_content "Unfollow"
  end

  # scenario "user unfollows hero" do 

  # end
end