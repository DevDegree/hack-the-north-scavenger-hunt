## first_ten_fibonacci()
## Finds the 1st 10 numbers in the Fibonacci Sequence
## Saves each number as elements in an array
## Returns that array
def first_ten_fibonacci
    [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
  end
  
  ## process_array(numbers)
  ## Args: An array of numbers
  ## Reverses the array
  ## Multiplies each number by it's index * 2
  ## Sums the numbers in the array together and returns it
  def process_array(numbers)
    rev = numbers.reverse()
    sum = 0
    rev.each.with_index(0) do |num,index|
        sum = sum + (num*2*index)
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
    str = number.to_s
    str = str.squeeze
    num = str.to_i
    num = num*4
    num.chr
  end
  
  fibonacci = first_ten_fibonacci()
  summed = process_array(fibonacci)
  ascii = print_ascii_character(summed)
  
  puts ascii
  