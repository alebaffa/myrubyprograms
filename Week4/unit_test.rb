require 'test/unit'
require_relative 'your_file_here'

class MyTest < Test::Unit::TestCase
  def test_fail
    assert('String', String.scramble.class.to_s)
  end
end
