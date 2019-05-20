require 'minitest/autorun'

class Calculator
  attr_reader :digits
  def initialize(digits_string)
    @digits = parse_input(digits_string) 
  end

  def parse_input(string)
    string.split(',').map{ |digit| digit.to_i } 
  end
  
  def sum
    digits.inject(:+)
  end
end

describe Calculator do
  it 'sums provided digits' do 
    calc = Calculator.new('1, 2, 3, 4, 5')
    calc.sum.must_equal(15)
  end
end 

