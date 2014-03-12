class Shape
  def initialize name
    @name = name
  end
  def rotate(rotation_type)
    "#{@name} is rotating around #{rotation_type}"
  end
  def play_sound(format)
    "#{@name} is playing file #{@name}.#{format}"
  end
  def click(rotation_type = 'the center', format = 'aif')
    puts rotate(rotation_type)
    puts play_sound(format)
  end
end
 
Shape.new("Square").click
Shape.new("Triangle").click
Shape.new("Circle").click
Shape.new("Amoeba").click('a end point', 'hif')