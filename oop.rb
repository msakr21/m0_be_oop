# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn

  def initialize(name)

    @name = name

    @color = "silver"

  end

  def say
    return "*~* #{@name} *~*"
  end

end

unicorn1 = Unicorn.new("Charlie")

print unicorn1.say



#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
  attr_reader :name
  def initialize(name, pet)

    @name = name

    if pet != nil
      @pet = pet
    else
      @pet = "bat"
    end

    @thirsty = true

  end

  def drink
    @thirsty = false
  end

  def identify
    puts @name, @pet
  end

end

vampire1 = Vampire.new("Dragula", "cat")

vampire1.identify


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon

  def initialize(name, rider, color)

    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @hunger = 0

  end

  def eats

    @hunger = @hunger + 1

    if @hunger < 4
      @is_hungry = true
    else
      @is_hungry = false
    end

    puts @hunger
    puts @is_hungry

  end

end

hunger = 0
dragon1 = Dragon.new("Sapphira", "Eragon", "Blue")

dragon1.eats
dragon1.eats
dragon1.eats
dragon1.eats



#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit

  def initialize(name, disposition)

    @name = name

    @disposition = disposition

    @age = 0

    @is_adult = false

    @is_old = false

    @has_ring = false

    if @age >= 33
      @is_adult = true
    else
      @is_adult = false
    end

    if @age >100
      @is_old = true
    else
      @is_old = false
    end

    if name == "Frodo"
      @has_ring = true
    else
      @has_ring = false
    end

  end

  def celebrate_birthday
      @age = @age + 1
      puts @age, @is_adult, @is_old, @has_ring
  end

end

hobbit1 = Hobbit.new("Sam", "Good")


hobbit1.celebrate_birthday
