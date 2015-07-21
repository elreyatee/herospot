class Hero < ActiveRecord::Base
  has_many :followers
  has_many :users, through: :followers
  belongs_to :category
  scope :sorted, ->{ order(:name) }
  validates_presence_of :name, :publisher, :biography
end