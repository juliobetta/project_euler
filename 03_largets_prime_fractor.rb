require('rspec')
require('prime')

# LARGEST PRIME FACTOR
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?


# IMPLEMENTATION
# ===================================================================
def largest_prime_factor_of(n)
  n.prime_division.map{|n| n[0]}.last
end


# SPEC
# ===================================================================
describe 'Find the last prime factor' do
  it 'should result 29, given 13195' do
    largest_prime_factor_of(13195).should == 29
  end
end
