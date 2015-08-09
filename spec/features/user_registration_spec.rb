require 'spec_helper'

feature "user registration" do 
  given(:user) { Fabricate(:user) }

  scenario "user registers credentials properly" do
    visit join_path
    fill_in "Full Name", with: user.full_name
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Submit"
    expect(page).to have_content "Login"
  end

  scenario "user submits incomplete form" do 
    visit join_path
    fill_in "Full Name", with: user.full_name
    fill_in "Email", with: user.email
    click_button "Submit"
    expect(page).to have_content "There was a problem, please try again"
  end
end