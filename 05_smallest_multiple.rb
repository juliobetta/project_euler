# SMALLEST MULTIPLE
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


# IMPLEMENTATION
# ===================================================================
def smallest_multiple(range = 1..10)
  # current_number = 1
  # found = false
  #
  # until found
  #   current_number += 1
  #   found = range.take_while{|n| current_number % n == 0}.length == range.size
  # end
  #
  # current_number
  
  
  # turns out that I was struggling in the code above, which is very slow, until I found
  # the ruby's lcm method
  # 
  # shame on me =(
  
  range.inject(:lcm)
end


# SPEC
# ===================================================================
describe 'Smallest multiple' do
  it 'should result 2520, from 1 to 10' do
    smallest_multiple.should == 2520
  end
end