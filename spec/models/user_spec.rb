require 'spec_helper'

describe User do  
  # it { should have_many(:followers) }
  # it { should have_many(:heros).through(:followers) }
  it { should validate_presence_of(:full_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
end