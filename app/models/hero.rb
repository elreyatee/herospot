class Hero < ActiveRecord::Base
  scope :sorted, ->{ order(:name) }

  belongs_to :category
  has_many :relationships
  has_many :followers, through: :relationships, source: :user, dependent: :destroy

  validates_presence_of :name, :publisher, :biography
  
  def self.search_by_name(search_term)
    return [] if search_term.blank? 
    where("name ILIKE ?", "%#{search_term}%")
  end
end