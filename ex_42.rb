# Exercise 42: Is-A, Has-A, Objects, and Classes

## Animal is-a object
class Animal
end

## Dog is-a Animal
class Dog < Animal
  def initialize(name)
    ## Dog has-a name
    @name = name
  end

  def display
    puts "Dog's name is #{@name}."
  end
end

## Cat is-a Animal
class Cat < Animal
  def initialize(name)
    ## Cat has-a name
    @name = name
  end

  def display
    puts "Cat's name is #{@name}."
  end
end

## Person is-a object
class Person
  def initialize(name)
    ## Person has-a name
    @name = name
    ## Person has-a pet
    @pet = nil
  end

  def display
    puts "Person's name is #{@name}."
  end
  attr_accessor :pet
end

## Employee is-a Person
class Employee < Person
  def initialize(name, salary)
    super(name)
    ## Employee has-a salary
    @salary = salary
  end

  def display
    puts "Employee's name is #{@name} and salary is #{@salary}."
  end
end

## Fish is-a object
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new('Rover')
rover.display

## satan is-a Cat
satan = Cat.new('Satan')
satan.display

## mary is-a Person
mary = Person.new('Mary')
mary.display

## mary has-a pet
mary.pet = satan

## franh is-a Employee
frank = Employee.new('Frank',120_000)
frank.display

## frank has-a pet
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new

## crouse is-a Salmon
crouse = Salmon.new

## mary is-a Halibut
harry = Halibut.new
