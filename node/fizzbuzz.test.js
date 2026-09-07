const {test, expect } = require('@jest/globals')
const fizzbuzz = require('./fizzbuzz')

test('print zero whith zero', () => {
  expect(fizzbuzz(0)).toBe(0)
});

test('print same number on 1, 2 and 4', () => {
  expect(fizzbuzz(1)).toBe(1);
  expect(fizzbuzz(2)).toBe(2);
  expect(fizzbuzz(4)).toBe(4);
});

test('print Fizz when number is multiple of 3 but not multiple of 5', () => {
  expect(fizzbuzz(3)).toBe('Fizz');
  expect(fizzbuzz(6)).toBe('Fizz');
  expect(fizzbuzz(9)).toBe('Fizz');
  expect(fizzbuzz(12)).toBe('Fizz');
  expect(fizzbuzz(15)).not.toBe('Fizz');
});

test('print Buzz when number is multiple of 5 but not multiple of 3', () => {
  expect(fizzbuzz(5)).toBe('Buzz');
  expect(fizzbuzz(10)).toBe('Buzz');
  expect(fizzbuzz(20)).toBe('Buzz');
  expect(fizzbuzz(15)).not.toBe('Buzz');
});

test('print FizBuzz when number is multiple of 3 and 5', () => {
  expect(fizzbuzz(15)).toBe('FizzBuzz');
  expect(fizzbuzz(30)).toBe('FizzBuzz');
  expect(fizzbuzz(45)).toBe('FizzBuzz');
});
