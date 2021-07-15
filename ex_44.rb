# Exercise 44: Inheritance Versus Composition

# Inheritance
puts '-' * 20
puts 'Inheritance'
puts '-' * 20

# class Parent
class Parent
  def override
    puts 'PARENT override()'
  end

  def implicit
    puts 'PARENT implicit()'
  end

  def altered
    puts 'PARENT altered()'
  end
end

# class Child
class Child < Parent
  def override
    puts 'CHILD override()'
  end

  def altered()
    puts 'CHILD, BEFORE PARENT altered()'
    super()
    puts 'CHILD, AFTER PARENT altered()'
  end
end

dad = Parent.new
son = Child.new

dad.implicit
son.implicit

dad.override
son.override

dad.altered
son.altered

# Composition
puts '-' * 20
puts 'Composition'
puts '-' * 20

# class other
class Other
  def override
    puts 'OTHER override()'
  end

  def implicit
    puts 'OTHER implicit()'
  end

  def altered
    puts 'OTHER altered()'
  end
end

#Child class
class Child
  def initialize
    @other = Other.new
  end

  def implicit
    @other.implicit
  end

  def override
    puts 'CHILD override()'
  end

  def altered()
    puts 'CHILD, BEFORE OTHER altered()'
    @other.altered
    puts 'CHILD, AFTER OTHER altered()'
  end
end

son = Child.new

son.implicit
son.override
son.altered

# Compositon using modules
puts '-' * 20
puts 'Composition using module'
puts '-' * 20

# module other1
module Other1
  def override
    puts 'OTHER override()'
  end

  def implicit
    puts 'OTHER implicit()'
  end

  def Other.altered()
    puts 'OTHER altered()'
  end
end

# child class
class Child
  include Other1

  def override
    puts 'CHILD override()'
  end

  def altered()
    puts 'CHILD, BEFORE OTHER altered()'
    Other.altered
    puts 'CHILD, AFTER OTHER altered()'
  end
end

son = Child.new

son.implicit
son.override
son.altered
