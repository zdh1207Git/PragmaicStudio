
class Test
attr_reader :name, :age
  def initialize(name,age)
    @name=name
    @age=age
  end
end

test1=Test.new("Jordan",48)
test2=Test.new("John",70)
tests=[test1,test2]
tests.each do |test|
  puts " My name is #{test.name}, I'm #{test.age} years old."
end
