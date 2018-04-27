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
    while money > 0
      # put a cent in the array
      coins << 1
      # coins = [1,1,1]
      # take away one cent
      money -= 1
      # money == 0
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
  end
end
