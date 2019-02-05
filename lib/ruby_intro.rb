# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr = arr.sort
    return arr[-1] + arr[-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.length > 2 && arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s == "0" || /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    
    @isbn=isbn
    @price=price
  end
  
  attr_reader :isbn, :price
  attr_writer :isbn, :price
  
  def price_as_string
    "$%0.2f" % [@price]
  end
end
