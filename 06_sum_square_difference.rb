require 'rspec'

# SUM SQUARE DIFFERENCE
# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# 
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 552 = 3025
# 
# Hence the difference between the sum of the squares of the first ten natural numbers and the 
# square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and 
# the square of the sum.


# IMPLEMENTATION
# ===================================================================
def calculate_square_difference(range = 1..10)
  sum1 = range.map{|n| n**2}.inject(:+)
  sum2 = range.reduce(:+)**2

  return sum2-sum1
end


# SPEC
# ===================================================================
describe 'Difference between sums' do
  it 'should result 2640 given a range from 1 to 10' do
    calculate_square_difference(1..10).should == 2640
  end
end