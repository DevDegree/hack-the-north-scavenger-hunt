## first_ten_fibonacci()
## Finds the 1st 10 numbers in the Fibonacci Sequence
## Saves each number as elements in an array
## Returns that array
def first_ten_fibonacci():
    return [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

## process_array(numbers)
## Args: An array of numbers
## Reverses the array
## Multiplies each number by it's index * 2
## Sums the numbers in the array together and returns it
def process_array(numbers):
    numbers.reverse()
    return sum(numbers[i] * i * 2 for i in range(len(numbers)))

## print_ascii_character()
## Args: A number
## Removes any duplicate digits in the number
## Replaces them with a singular instance ie: 110 = 10
## Multiplies that number by 4
## Returns the ASCII character that has the same value of the number
def print_ascii_character(number):
    seen = [False] * 10
    new_number = 0
    power = 1
    while number != 0:
        digit = number % 10
        number //= 10
        if not seen[digit]:
            seen[digit] = True
            new_number += digit * power
            power *= 10
    return chr(new_number * 4)

# If you need to run this script directly, you can add:
if __name__ == "__main__":
    fibonacci = first_ten_fibonacci()
    #print(fibonacci)
    summed = process_array(fibonacci)
    #print(summed)
    ascii = print_ascii_character(summed)
    print(ascii)