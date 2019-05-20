require 'minitest/autorun'

class Calculator
  attr_reader :digits
  def initialize(digits_string)
    @digits = parse_input(digits_string) 
  end
  
  def divide
    digits.inject(:/)
  end

  def parse_input(string)
    string.split(',').map{ |digit| digit.to_i } 
  end 
  
  def multiply
    digits.inject(:*)
  end
  
  def sum
    digits.inject(:+)
  end

  def substract
    digits.inject(:-)
  end
end

describe Calculator do
  it 'sums provided digits' do 
    calc = Calculator.new('1, 2, 3, 4, 5')
    calc.sum.must_equal(15)
  end

  it 'multiplies provided digits' do
    calc = Calculator.new('4, 5')
    calc.multiply.must_equal(20)
  end

  it 'substracts provided digits' do
    calc = Calculator.new('30, 20, 5')
    calc.substract.must_equal(5)
  end

  it 'divides provided digits' do
    calc = Calculator.new('30, 5')
    calc.divide.must_equal(6)
  end
end 

