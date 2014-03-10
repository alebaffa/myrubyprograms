class UnpredictableString
  def initialize string
    @self_badname = string
  end

  def scramble
    @self_badname.split(//).shuffle.join
  end

  def to_s
    scramble
  end
end

my_unpredictable = UnpredictableString.new('This is unpredictable')
5.times do
  puts my_unpredictable
end
