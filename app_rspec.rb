require_relative 'app'

describe Solver do
  context '#factorial' do
    it 'should return factorial number of 5' do
      solver = Solver.new
      expect(solver.factorial(5)).to eq 120
    end
    it 'should return 1 number of 0' do
      solver = Solver.new
      expect(solver.factorial(0)).to eq 1
    end
    it "should return 'Negative are not allowed' number of -10" do
      solver = Solver.new
      expect { solver.factorial(-10) }.to raise_error('Negative are not allowed')
    end
  end

  context '#reverse' do
    it 'Should reverse the string of hello' do
      solver = Solver.new
      str = 'hello'
      expect(solver.reverse(str)).to eq 'olleh'
    end
  end

  context '#fizzbuzz' do
    it 'Should  return fizzbuzz if number is 15' do
      solver = Solver.new
      num = 15
      expect(solver.fizzbuzz(num)).to eq 'fizzbuzz'
    end
    it "Should  return '4' if number is 4" do
      solver = Solver.new
      num = 4
      expect(solver.fizzbuzz(num)).to eq '4'
    end

    it 'Should  return fizz if number is 9' do
      solver = Solver.new
      num = 9
      expect(solver.fizzbuzz(num)).to eq 'fizz'
    end
    it 'Should  return buzz if number is 20' do
      solver = Solver.new
      num = 20
      expect(solver.fizzbuzz(num)).to eq 'buzz'
    end
  end
end
