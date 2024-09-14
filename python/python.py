import base64

# base64text = 'IyMgZmlyc3RfdGVuX2ZpYm9uYWNjaSgpCiMjIEZpbmRzIHRoZSAxc3QgMTAgbnVtYmVycyBpbiB0aGUgRmlib25hY2NpIFNlcXVlbmNlCiMjIFNhdmVzIGVhY2ggbnVtYmVyIGFzIGVsZW1lbnRzIGluIGFuIGFycmF5CiMjIFJldHVybnMgdGhhdCBhcnJheQpkZWYgZmlyc3RfdGVuX2ZpYm9uYWNjaSgpOgogICAgcmV0dXJuIFtdCgojIyBwcm9jZXNzX2FycmF5KG51bWJlcnMpCiMjIEFyZ3M6IEFuIGFycmF5IG9mIG51bWJlcnMKIyMgUmV2ZXJzZXMgdGhlIGFycmF5CiMjIE11bHRpcGxpZXMgZWFjaCBudW1iZXIgYnkgaXQncyBpbmRleCAqIDIKIyMgU3VtcyB0aGUgbnVtYmVycyBpbiB0aGUgYXJyYXkgdG9nZXRoZXIgYW5kIHJldHVybnMgaXQKZGVmIHByb2Nlc3NfYXJyYXkobnVtYmVycyk6CiAgICByZXR1cm4gMAoKIyMgcHJpbnRfYXNjaWlfY2hhcmFjdGVyKCkKIyMgQXJnczogQSBudW1iZXIKIyMgUmVtb3ZlcyBhbnkgZHVwbGljYXRlIGRpZ2l0cyBpbiB0aGUgbnVtYmVyCiMjIFJlcGxhY2VzIHRoZW0gd2l0aCBhIHNpbmd1bGFyIGluc3RhbmNlIGllOiAxMTAgPSAxMAojIyBNdWx0aXBsaWVzIHRoYXQgbnVtYmVyIGJ5IDQKIyMgUmV0dXJucyB0aGUgQVNDSUkgY2hhcmFjdGVyIHRoYXQgaGFzIHRoZSBzYW1lIHZhbHVlIG9mIHRoZSBudW1iZXIKZGVmIHByaW50X2FzY2lpX2NoYXJhY3RlcihudW1iZXIpOgogICAgcmV0dXJuICcnCgojIElmIHlvdSBuZWVkIHRvIHJ1biB0aGlzIHNjcmlwdCBkaXJlY3RseSwgeW91IGNhbiBhZGQ6CmlmIF9fbmFtZV9fID09ICJfX21haW5fXyI6CiAgICBmaWJvbmFjY2kgPSBmaXJzdF90ZW5fZmlib25hY2NpKCkKICAgIHN1bW1lZCA9IHByb2Nlc3NfYXJyYXkoZmlib25hY2NpKQogICAgYXNjaWkgPSBwcmludF9hc2NpaV9jaGFyYWN0ZXIoc3VtbWVkKQogICAgcHJpbnQoYXNjaWkp'
# decoded_data = base64.b64decode(base64text).decode('utf-8')
# print(decoded_data)

## first_ten_fibonacci()
## Finds the 1st 10 numbers in the Fibonacci Sequence
## Saves each number as elements in an array
## Returns that array
def first_ten_fibonacci():
    result = [0, 1]
    while (len(result) < 10):
        result.append(result[-1] + result[-2])
    return result

## process_array(numbers)
## Args: An array of numbers
## Reverses the array
## Multiplies each number by it's index * 2
## Sums the numbers in the array together and returns it
def process_array(numbers):
    reversed = numbers[::-1]
    total = 0
    for index, number in enumerate(reversed):
        total += number * (index * 2)
    return total

## print_ascii_character()
## Args: A number
## Removes any duplicate digits in the number
## Replaces them with a singular instance ie: 110 = 10
## Multiplies that number by 4
## Returns the ASCII character that has the same value of the number
def print_ascii_character(number):
    num_str = str(number)
    unique_digits = ''.join(sorted(set(num_str), key=num_str.index))
    unique_number = int(unique_digits) * 4
    ascii_char = chr(unique_number)
    return ascii_char

# If you need to run this script directly, you can add:
if __name__ == "__main__":
    fibonacci = first_ten_fibonacci()
    summed = process_array(fibonacci)
    ascii = print_ascii_character(summed)
    print(ascii)