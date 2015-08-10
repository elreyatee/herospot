class Hero < ActiveRecord::Base
  scope :sorted, ->{ order(:name) }
  has_many :aliases
  belongs_to :category
  has_many :relationships
  has_many :followers, through: :relationships, source: :user, dependent: :destroy
  validates_presence_of :name, :publisher, :biography

  MAX_CHARS = 240
  
  def self.search_by_name(search_term)
    return [] if search_term.blank? 
    where("name ILIKE ?", "%#{search_term}%").reverse_order
  end

  def follower?(some_user)
    followers.include?(some_user)
  end

  def summary
    summary = biography.split(".")[0..4].join(".")[0..MAX_CHARS]
    summary.concat("...") unless summary.ends_with_punctuation?
  end

  def self.select_random_heros(n = 1)
    result = []
    until result.size == n do
      hero = find(sample_heros)
      result << hero unless result.include?(hero)
    end
    result
  end

  private

  def self.sample_heros
    pluck(:id).sample
  end
end