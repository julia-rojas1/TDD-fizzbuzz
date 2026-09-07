require_relative 'fizzbuzz'
require 'minitest/autorun'

# Pruebas unitarias para el algoritmo FizzBuzz
class TestFizzBuzz < Minitest::Test
  def test_with_zero
    assert_equal fizzbuzz(0), 0
  end

  def test_same_number_with_one_two_and_four
    assert_equal fizzbuzz(1), 1
    assert_equal fizzbuzz(2), 2
    assert_equal fizzbuzz(4), 4
  end

  def test_print_fizz_when_multiple_of_three_only
    assert_equal 'Fizz', fizzbuzz(3)
    assert_equal 'Fizz', fizzbuzz(6)
    assert_equal 'Fizz', fizzbuzz(9)
    assert_equal 'Fizz', fizzbuzz(12)
    refute_equal 'Fizz', fizzbuzz(15)
  end

  def test_print_fizz_when_multiple_of_five_only
    assert_equal 'Buzz', fizzbuzz(5)
    assert_equal 'Buzz', fizzbuzz(10)
    assert_equal 'Buzz', fizzbuzz(20)
    refute_equal 'Buzz', fizzbuzz(15)
  end

  def test_print_fizz_when_multiple_of_three_and_five
    assert_equal 'FizzBuzz', fizzbuzz(15)
    assert_equal 'FizzBuzz', fizzbuzz(30)
    assert_equal 'FizzBuzz', fizzbuzz(45)
  end
end
