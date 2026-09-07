def fizzbuzz(number)
  return 0 if number.zero?
  return 'FizzBuzz' if (number % 3).zero? && (number % 5).zero?
  return 'Fizz' if (number % 3).zero?
  return 'Buzz' if (number % 5).zero?

  number
end
