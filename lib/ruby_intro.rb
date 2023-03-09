# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else 
    sorted_numbers = arr.sort.reverse
    return sorted_numbers[0] + sorted_numbers[1]  
  end
end

def sum_to_n? arr, n
  length = arr.length
  if length == 1 || length == 0
    return false
  else
    if !arr.empty? && !(arr.length == 1)
      if arr.combination(2).any? {|a, b| a + b == n}
        return true
      end
    end
    return false
  end
  
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.empty? || !s[0].match?(/[a-zA-Z]/)
  return !s[0].match?(/[AEIOUaeiou]/)
end

def binary_multiple_of_4? s
  return false unless s.match?(/^[01]+$/)
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  def initialize(isbn, price) # Constructor
    raise ArgumentError if isbn.empty? # Ensure isbn is not empty. If it is, raise ArgumentError
    raise ArgumentError if price <= 0 # Ensure price > 0. If not, raise ArgumentError. 
    @isbn = isbn
    @price = price
  end

  def isbn # isbn getter
    @isbn
  end

  def price # price getter
    @price
  end

  def isbn=(isbn) # isbn setter
    @isbn = isbn
  end

  def price=(price) # price setter
    @price = price
  end

  def price_as_string # Return price as formatted string
    "$%0.2f" % [@price]
  end
end
