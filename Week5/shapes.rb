class Shape
  def rotate
    'Rotating around the center of ' + self.class.name
  end
 
  def play_sound
    "I am playing the sound #{self.class.name}.aif"
  end
end
 
class Amoeba < Shape
  def rotate
    'I am rotating around a end point!'
  end
 
  def play_sound
    'I am playing the sound amoeba.hif'
  end
end
 
Square = Class.new(Shape)
square = Square.new
puts square.play_sound
puts square.rotate

Triangle = Class.new(Shape)
triangle = Triangle.new
puts triangle.play_sound
puts triangle.rotate

amoeba = Amoeba.new
puts amoeba.play_sound
puts amoeba.rotate