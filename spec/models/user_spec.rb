require 'spec_helper'

describe User do  
  it { should have_many(:following).through(:relationships) }
  it { should validate_presence_of(:full_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
end