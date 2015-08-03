require 'spec_helper'

describe Hero do  
  it { should belong_to(:category) }
  it { should have_many(:followers).through(:relationships) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:biography) }
  it { should validate_presence_of(:publisher) }

  let(:user) { Fabricate(:user) }
  let(:black_adam) { Fabricate(:hero, name: "Black Adam") }
  let(:shazam) { Fabricate(:hero, name: "Shazam") }

  describe "#summary" do 
    it "returns first five sentences of biography" do 
      expect(shazam.summary.split(".").count).to eq(5)
    end

    it "appends summary with ... if last char is not a punctuation" do 
      expect(shazam.summary[-3..-1]).to eq("...")
    end

    it "returns up to 250 characters" do 
      expect(shazam.summary.chars.count).to be <= 250
    end
  end

  describe "#search_by_name" do
    it "returns an empty array if there is no match" do  
      expect(Hero.search_by_name("superman")).to eq([])
    end

    it "returns an array of one hero for an exact match" do 
      expect(Hero.search_by_name("Shazam")).to eq([shazam])
    end

    it "returns an array of one hero for a partial match" do  
      expect(Hero.search_by_name("Shaz")).to eq([shazam])
    end

    it "returns an array of one hero for a partial match regardless of capitalization" do  
      expect(Hero.search_by_name("SHAZ")).to eq([shazam])
    end

    it "returns an array of all matches ordered by name" do 
      expect(Hero.search_by_name("am")).to eq([black_adam, shazam])
    end

    it "return empty when search term is empty string" do  
      expect(Hero.search_by_name("")).to eq([])
    end
  end

  describe "#follower?(some_user)" do 
    it "should return true if user is a follower of hero" do 
      shazam.relationships.create(user_id: user.id)
      expect(shazam.follower?(user)).to be true
    end

    it "should return false if user is not a follow of hero" do 
      expect(shazam.follower?(user)).to be false
    end
  end
end