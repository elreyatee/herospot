class Category < ActiveRecord::Base
  has_many :heros, ->{ order(:name) }
  validates :name, uniqueness: true
end