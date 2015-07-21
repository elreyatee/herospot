class Category < ActiveRecord::Base
  has_many :heros, ->{ order(:name) }
end