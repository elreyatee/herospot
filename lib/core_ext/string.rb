String.class_eval do 
  def ends_with_punctuation?
    %w(. ? !).include? self[-1]
  end
end