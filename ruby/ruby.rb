## first_ten_fibonacci()
## Finds the 1st 10 numbers in the Fibonacci Sequence
## Saves each number as elements in an array
## Returns that array
def first_ten_fibonacci
    fib = [0, 1]
    (2...10).each do |i|
      fib << fib[i - 1] + fib[i - 2]
    end
    fib
  end
  
  ## process_array(numbers)
  ## Args: An array of numbers
  ## Reverses the array
  ## Multiplies each number by its index * 2
  ## Sums the numbers in the array together and returns it
  def process_array(numbers)
    reversed = numbers.reverse
    sum = 0
    reversed.each_with_index do |num, index|
      sum += num * index * 2
    end
    sum
  end
  
  ## print_ascii_character()
  ## Args: A number
  ## Removes any duplicate digits in the number
  ## Replaces them with a singular instance ie: 110 = 10
  ## Multiplies that number by 4
  ## Returns the ASCII character that has the same value of the number
  def print_ascii_character(number)
    unique_digits = number.to_s.chars.uniq.join.to_i
    multiplied_value = unique_digits * 4
    multiplied_value.chr
  end
  
  fibonacci = first_ten_fibonacci()
  summed = process_array(fibonacci)
  ascii = print_ascii_character(summed)
  
  puts ascii
  