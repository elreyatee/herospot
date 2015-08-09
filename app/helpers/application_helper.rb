module ApplicationHelper
  def display_heros(n = 1)
    result = []
    until result.size == n do
      ids = Hero.pluck(:id).sample
      hero = Hero.find(ids)
      result << hero if !result.include?(hero)
    end
    result
  end  
end
