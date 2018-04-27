require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end


calculator = Calculator.new

# driver code
# if calculator.add(4, 3) == 7
#   p "the add method works"
# else
#   p "add does not work"
# end



RSpec.describe Calculator do
  describe '#add' do
    it 'should add two numbers together' do
      calculator = Calculator.new
      result = calculator.add(3,7)
      expect(result).to eq(10)
    end
    it 'should add a negative and a positive number together' do
      calculator = Calculator.new
      result = calculator.add(3,-7)
      expect(result).to eq(-4)
    end
  end
  describe '#subtract' do
    it 'should subtract two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(12,5)
      expect(result).to eq(7)
    end
  end
  describe '#multiply' do
    it 'should find the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(4,9)
      expect(result).to eq(36)
    end
  end
  describe '#divide' do
    it 'should find the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(35,5)
      expect(result).to eq(7)
    end
  end
  describe '#square' do
    it 'should find the square of a number' do
      calculator = Calculator.new
      result = calculator.square(6)
      expect(result).to eq(36)
    end
  end
  describe '#power' do
    it 'should find the power of a number' do
      calculator = Calculator.new
      result = calculator.power(6,3)
      expect(result).to eq(216)
    end
  end
end

