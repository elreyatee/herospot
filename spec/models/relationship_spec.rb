require 'spec_helper'

describe Relationship do 
  it { should belong_to(:user) }
  it { should belong_to(:hero) }
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:hero) }

  it "should delete user_id if user record is destroyed" do
    user = User.new(full_name: "Bob", email: "bob@example.com", password: "test")
    hero = Hero.new(name: "Batman", publisher: "DC", biography: "Dark Knight")
    hero.followers << user
    user.destroy
    expect(hero.followers.count).to eq(0)
  end

  it "should delete hero_id if hero record is destroyed" do 
    user = User.new(full_name: "Bob", email: "bob@example.com", password: "test")
    hero = Hero.new(name: "Batman", publisher: "DC", biography: "Dark Knight")
    hero.followers << user
    hero.destroy
    expect(user.following.count).to eq(0)
  end
end