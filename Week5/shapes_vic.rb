Shape = Class.new do
  def rotate
    "#{self.class.to_s.downcase} rotates 360 degrees"
  end

  def play_sound
    "#{self.class.to_s.downcase} plays aif sound file"
  end

  def click
    puts rotate, play_sound
  end
end

shape_objects = [:Triangle, :Circle, :Square].map do |s|
  eval("#{s} = Class.new(Shape)")
end

puts shape_objects.inspect

shape_objects.each do |s|
  eval("#{s}.new.click")
end
