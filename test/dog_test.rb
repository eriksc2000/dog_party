require 'minitest/test'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/dog'

class DogTest < Minitest::Test

  def test_it_exists
    dog = Dog.new("Fido", 2, "Dalmation")

    assert_instance_of Dog, dog
  end
  
  def test_it_has_a_name
    dog = Dog.new("Fido", 2, "Dalmation")

    expected = "Fido"
    actual   = dog.name

    assert_equal expected, actual
  end

  def test_it_has_an_age
    dog = Dog.new("Fido", 2, "Dalmation")

    expected = 2
    actual   = dog.age

    assert_equal expected, actual
  end

  def test_it_has_a_breed
    dog = Dog.new("Fido", 2, "Dalmation")

    expected = "Dalmation"
    actual   = dog.breed

    assert_equal expected, actual
  end

  
  def test_it_can_bark
    dog = Dog.new("Fido", 2, "Dalmation")
    
    assert_equal "Woof", dog.bark 
  end 
end
