class Relationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :hero
  validates :user, presence: true
  validates :hero, presence: true
end