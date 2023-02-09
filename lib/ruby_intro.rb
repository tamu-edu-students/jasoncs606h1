# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  total = 0
  for i in arr do
    total += i
  end
  return total
end

def max_2_sum(arr)
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  l1=-Float::INFINITY
  l2=-Float::INFINITY
  for i in arr do 
    if i > l1 && l1<l2
      l1=i
    elsif i > l2
      l2=i
    end
  end
  return l1+l2
end

def sum_to_n?(arr, number)
  if arr.length <= 1
    return false
  end
  for i in 0...arr.length do
    for j in (i+1)...arr.length do
      if arr[i]+arr[j]==number
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  return string.match(/^[^AaEeIiOoUu]/) != nil && string.match(/^[A-Za-z]/) != nil
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  return string.match(/^[01]+$/) !=nil && string.to_i(2) % 4 == 0
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(a, b)
    if a=='' || b<=0
      raise ArgumentError
    end
    @isbn = a
    @price = b
  end
  def price_as_string()
    return '$'+ "%0.2f" % [price]
  end
end
