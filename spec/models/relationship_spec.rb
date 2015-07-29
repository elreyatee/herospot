require 'spec_helper'

describe Relationship do 
  it { should belong_to(:user) }
  it { should belong_to(:hero) }
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:hero) }

  it "should delete user_id if user record is destroyed" do
    bob = User.new(full_name: "Bob", email: "bob@example.com", password: "test")
    batman = Hero.new(name: "Batman", publisher: "DC", biography: "Dark Knight")
    batman.followers << bob
    bob.destroy
    expect(batman.followers.count).to eq(0)
  end

  it "should delete hero_id if hero record is destroyed" do 
    bob = User.new(full_name: "Bob", email: "bob@example.com", password: "test")
    batman = Hero.new(name: "Batman", publisher: "DC", biography: "Dark Knight")
    batman.followers << bob
    batman.destroy
    expect(bob.following.count).to eq(0)
  end
end