module Jumpable
  def jump
    puts "Jumping!"
  end
end

class Person
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end
end

class Cat
  include Jumpable
end

class Bulldog
  include Jumpable
end

bob = Person.new("Robert")

kitty = Cat.new
bud = Bulldog.new

bob.pets << kitty
bob.pets << bud

bob.pets # => [#<Cat:0x007fd839999620>, #<Bulldog:0x007fd839994ff8>]

bob.pets.each do |pet|
  pet.jump
end