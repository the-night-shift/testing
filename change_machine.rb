require 'rspec'

# 1 [1]
# 2 [1,1]
# 3 [1,1,1]
# 4 [1,1,1,1]
# 5 [5]
# 6 [5,1]
# 7 [5,1,1]
# 8 [5,1,1,1]
# 9
# 10 [10]
# 11
# 12
# 13
# 14
# 15

class ChangeMachine
  def change(money)
    coins = []
    denominations = [25,10,5,1]
    denominations.each do |denomination|
      while money >= denomination
        coins << denomination
        money -= denomination
      end
    end
    return coins
  end
end


RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end
    it 'should return [1,1] when given 2' do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1,1])
    end
    it 'should return [1,1,1] when given 3' do
      machine = ChangeMachine.new
      expect(machine.change(3)).to eq([1,1,1])
    end
    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq([5])
    end
    it 'should return [5,1] when given 6' do
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5,1])
    end
    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      expect(machine.change(10)).to eq([10])
    end
    it 'should return [10,10] when given 20' do
      machine = ChangeMachine.new
      expect(machine.change(20)).to eq([10,10])
    end
    it 'should return [10,5,1,1,1] when given 18' do
      machine = ChangeMachine.new
      expect(machine.change(18)).to eq([10,5,1,1,1])
    end
    it 'should return [25] when given 25' do
      machine = ChangeMachine.new
      expect(machine.change(25)).to eq([25])
    end
    it 'should return [25,25,25,25,10,5,1,1,1,1] when given 119' do
      machine = ChangeMachine.new
      expect(machine.change(119)).to eq([25,25,25,25,10,5,1,1,1,1])
    end
  end
end
