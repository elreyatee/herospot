class Hero < ActiveRecord::Base
  scope :sorted, ->{ order(:name) }

  has_many :aliases
  belongs_to :category
  has_many :relationships
  has_many :followers, through: :relationships, source: :user, dependent: :destroy

  validates_presence_of :name, :publisher, :biography
  
  def self.search_by_name(search_term)
    return [] if search_term.blank? 
    where("name ILIKE ?", "%#{search_term}%")
  end

  def follower?(some_user)
    self.followers.include?(some_user)
  end

  def summary
    summary = self.biography.split(".")[0..4].join(".")[0..240]
    summary << "..." unless summary[-1] == "."
  end
end