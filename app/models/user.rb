class User < ActiveRecord::Base
  has_secure_password validations: false
  has_many :followers
  has_many :heros, through: :followers
  validates :full_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: { minimum: 7}
end