require 'rspec'
require 'prime'

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that 
# the 6th prime is 13.
# What is the 10 001st prime number?


# IMPLEMENTATION
# ===================================================================
def prime(position)
  Prime.first(position).last
end


# SPEC
# ===================================================================
describe 'Find a prime number given a position' do
  it 'should result 13, given the 6th position' do
    prime(6).should == 13
  end
end