require 'spec_helper'

describe Hero do  
  # it { should have_many(:followers) }
  it { should belong_to(:category) }
  # it { should have_many(:users).through(:followers) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:biography) }
  it { should validate_presence_of(:publisher) }

  describe "#search_by_name" do
    it "returns an empty array if there is no match" do  
      black_adam = Hero.create(name: "Black Adam", publisher: "DC", biography: "Black Adam is a fictional supervillain appearing in American comic books published by DC Comics, and is a primary adversary of the superhero Shazam, formerly known as Captain Marvel.")
      shazam = Hero.create(name: "Shazam", publisher: "DC", biography: "Shazam is the alter ego of Billy Batson, a boy who, by speaking the magic word 'Shazam', can transform himself into a costumed adult with the powers of superhuman strength, speed, flight, and other abilities.")
      expect(Hero.search_by_name("superman")).to eq([])
    end

    it "returns an array of one hero for an exact match" do 
      black_adam = Hero.create(name: "Black Adam", publisher: "DC", biography: "Black Adam is a fictional supervillain appearing in American comic books published by DC Comics, and is a primary adversary of the superhero Shazam, formerly known as Captain Marvel.")
      shazam = Hero.create(name: "Shazam", publisher: "DC", biography: "Shazam is the alter ego of Billy Batson, a boy who, by speaking the magic word 'Shazam', can transform himself into a costumed adult with the powers of superhuman strength, speed, flight, and other abilities.")
      expect(Hero.search_by_name("Shazam")).to eq([shazam])
    end

    it "returns an array of one hero for a partial match" do  
      black_adam = Hero.create(name: "Black Adam", publisher: "DC", biography: "Black Adam is a fictional supervillain appearing in American comic books published by DC Comics, and is a primary adversary of the superhero Shazam, formerly known as Captain Marvel.")
      shazam = Hero.create(name: "Shazam", publisher: "DC", biography: "Shazam is the alter ego of Billy Batson, a boy who, by speaking the magic word 'Shazam', can transform himself into a costumed adult with the powers of superhuman strength, speed, flight, and other abilities.")
      expect(Hero.search_by_name("Shaz")).to eq([shazam])
    end

    it "returns an array of one hero for a partial match regardless of capitalization" do  
      black_adam = Hero.create(name: "Black Adam", publisher: "DC", biography: "Black Adam is a fictional supervillain appearing in American comic books published by DC Comics, and is a primary adversary of the superhero Shazam, formerly known as Captain Marvel.")
      shazam = Hero.create(name: "Shazam", publisher: "DC", biography: "Shazam is the alter ego of Billy Batson, a boy who, by speaking the magic word 'Shazam', can transform himself into a costumed adult with the powers of superhuman strength, speed, flight, and other abilities.")
      expect(Hero.search_by_name("SHAZ")).to eq([shazam])
    end

    it "returns an array of all matches ordered by name" do 
      black_adam = Hero.create(name: "Black Adam", publisher: "DC", biography: "Black Adam is a fictional supervillain appearing in American comic books published by DC Comics, and is a primary adversary of the superhero Shazam, formerly known as Captain Marvel.")
      shazam = Hero.create(name: "Shazam", publisher: "DC", biography: "Shazam is the alter ego of Billy Batson, a boy who, by speaking the magic word 'Shazam', can transform himself into a costumed adult with the powers of superhuman strength, speed, flight, and other abilities.")
      expect(Hero.search_by_name("am")).to eq([black_adam, shazam])
    end

    it "return empty when search term is empty string" do  
      black_adam = Hero.create(name: "Black Adam", publisher: "DC", biography: "Black Adam is a fictional supervillain appearing in American comic books published by DC Comics, and is a primary adversary of the superhero Shazam, formerly known as Captain Marvel.")
      shazam = Hero.create(name: "Shazam", publisher: "DC", biography: "Shazam is the alter ego of Billy Batson, a boy who, by speaking the magic word 'Shazam', can transform himself into a costumed adult with the powers of superhuman strength, speed, flight, and other abilities.")
      expect(Hero.search_by_name("")).to eq([])
    end
  end
end