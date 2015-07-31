require 'spec_helper'

describe Relationship do 
  it { should belong_to(:user) }
  it { should belong_to(:hero) }
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:hero) }

  let(:user) { Fabricate(:user) }
  let(:hero) { Fabricate(:hero) }

  it "should delete user_id if user record is destroyed" do
    hero.relationships.create(user_id: user.id)
    user.destroy
    expect(hero.followers.count).to eq(0)
  end

  it "should delete hero_id if hero record is destroyed" do 
    hero.relationships.create(user_id: user.id)
    hero.destroy
    expect(user.following.count).to eq(0)
  end
end