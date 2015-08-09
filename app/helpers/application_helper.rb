module ApplicationHelper
  def collect_ids
    Hero.pluck(:id)
  end

  def display_heros(n = 1)
    result = []
    until result.size == n do
      hero = Hero.find(collect_ids.sample)
      result << hero unless result.include?(hero)
    end
    result
  end  
end
