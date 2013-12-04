require 'rspec'

# LARGEST PALINDROME PRODUCT
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_product(n = 2)
  n = n.to_i

  raise 'n should be > 1' if n < 2

  first_number = (1.to_s * n).to_i
  last_number  = (9.to_s * n).to_i
  max          = 0

  last_number.downto(first_number) do |i|
    i.downto(first_number) do |j|
      result = i * j
      max    = result if result > max and result.to_s == result.to_s.reverse
      break if result <= max
    end
  end

  return max
end

describe 'Last Palindrome Product' do
  it 'should be 9009, given n = 2' do
    largest_palindrome_product(2).should == 9009
  end

  it 'should parse a given float param to int before do the calculations' do
    largest_palindrome_product(2.3).should == 9009
  end

  it 'should raise exception if n < 2' do
    [-1, 0, 1, 1.3].each do |n|
      expect{ largest_palindrome_product(n) }.to raise_exception
    end
  end
end