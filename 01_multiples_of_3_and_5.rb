require('rspec')

# MULTIPLES OF 3 and 5
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.


# IMPLEMENTATION
# ===================================================================
def calculate_below(n)
  (1...n).select{|n| n if n % 3 == 0 or n % 5 == 0}.reduce(:+)
end


# SPEC
# ===================================================================
describe 'Find the sum of all the multiples of 3 or 5 below a given number' do
  it 'should find 23 from 1 to 10' do
    calculate_below(10).should == 23
  end
end