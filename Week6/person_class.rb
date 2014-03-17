=begin
doctest: test accessibility of balance in Person class
>> person = Person.new(45)
>> person.balance
=> 45  
=end

class Person
  def initialize(balance)
    @balance = balance
  end
  attr_reader :balance
end