require 'spec_helper'

describe Hero do  
  it { should have_many(:followers) }
  it { should belong_to(:category) }
  it { should have_many(:users).through(:followers) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:biography) }
  it { should validate_presence_of(:publisher) }
end