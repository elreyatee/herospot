module ApplicationHelper
  # def collect_ids
  #   Hero.pluck(:id)
  # end

  def display_heros(n = 1)
    result = []
    until result.size == n do
      ids = Hero.pluck(:id).sample
      hero = Hero.find(ids)
      result << hero unless result.include?(hero)
    end
    result
  end  
end
