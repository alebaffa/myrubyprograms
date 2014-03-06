class Dog
  def initialize(name)
    @name = name
  end

  def bark
    'woof!'
  end

  def eat
    'gnam gnam!'
  end

  def chase_cat
    'arf arf arf!'
  end

  def teach_trick(name, &block)
    self.class.send(:define_method, name, &block)
  end
  
end

d = Dog.new('Lassie')
d.teach_trick(:dance) { "#{@name} is dancing!" }
puts d.dance
d.teach_trick(:poo) { "#{@name} is a smelly doggy!" }
puts d.poo
d2 = Dog.new('Fido')
puts d2.dance
d2.teach_trick(:laugh) { "#{@name} finds this hilarious!" }
puts d2.laugh
puts d.laugh
d3 = Dog.new('Stimpy')
puts d3.dance
puts d3.laugh