=begin
doctest: I can greet the world!
>> hello
=> 'Hello World!'
doctest: I can greet Satish
>> hello('Satish you are here')
=> 'Hello Satish you are here!'
doctest: I can ask if someone is there
>> hello('Alessandro', '?')
=> 'Hello Alessandro?'
=end

def hello(name = 'World', mark = '!')
  "Hello #{name}#{mark}"
end
