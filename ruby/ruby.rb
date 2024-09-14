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
    reversed = numbers.reverse
    sm = 0
    reversed.each_with_index do |num, i|
      reversed[i] *= (i * 2)
      sm += reversed[i]
    end
    sm
  end
  
  ## print_ascii_character()
  ## Args: A number
  ## Removes any duplicate digits in the number
  ## Replaces them with a singular instance ie: 110 = 10
  ## Multiplies that number by 4
  ## Returns the ASCII character that has the same value of the number
  def print_ascii_character(number)
    num_str = number.to_s
    seen = Set.new
    sing_instance = ""
  
    num_str.each_char do |c|
      unless seen.include?(c)
        sing_instance += c
        seen.add(c)
      end
    end
  
    sing_instance = sing_instance.to_i * 4
    sing_instance.chr
  end
  
  fibonacci = first_ten_fibonacci()
  summed = process_array(fibonacci)
  ascii = print_ascii_character(summed)
  
  puts ascii