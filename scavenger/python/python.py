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
    tot = 0
    for i in range(len(numbers)): tot += numbers[i] * (len(numbers)-i-1) * 2
    return tot

## print_ascii_character()
## Args: A number
## Removes any duplicate digits in the number
## Replaces them with a singular instance ie: 110 = 10
## Multiplies that number by 4
## Returns the ASCII character that has the same value of the number
def print_ascii_character(number):
    num = str(number)
    s = set()
    newNum = ''
    for i in num:
        if i not in s:
            s.add(i)
            newNum += i
            
    return chr(int(newNum) * 4)

# If you need to run this script directly, you can add:
if __name__ == "__main__":
    fibonacci = first_ten_fibonacci()
    summed = process_array(fibonacci)
    ascii = print_ascii_character(summed)
    print(ascii)