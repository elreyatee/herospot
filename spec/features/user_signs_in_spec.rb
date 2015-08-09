require 'spec_helper'

feature "User signs in" do 
  background do 
    User.create!(full_name: "Ellery", email: "elreyatee@example.com", password: "password")
    Hero.create!(name: "Spiderman", publisher: "Marvel", biography: "Web slinger")
  end

  scenario "with existing username" do 
    visit login_path
    fill_in "Email", with: "elreyatee@example.com"
    fill_in "Password", with: "password"
    click_button "Submit"
    expect(page).to have_content "You are logged in"
  end

  scenario "with incorrect credentials" do 
    visit login_path
    fill_in "Email", with: "elreyatee@example.com"
    fill_in "Password", with: "oops"
    click_button "Submit"
    expect(page).to have_content "There was a problem, please try again"
  end
end