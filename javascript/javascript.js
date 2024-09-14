// firstTenFibonacci()
// Finds the 1st 10 numbers in the Fibonacci Sequence
// Saves each number as elements in an array
// Returns that array
function firstTenFibonacci() {
    let result = [0, 1]
    for (i = 2; i < 10; i++) {
      result.push(result[i - 1] + result[i - 2]);
    }
    return result;
  }
  
  // processArray(numbers)
  // Args: An array of numbers
  // Reverses the array
  // Multiplies each number by it's index * 2
  // Sums the numbers in the array together and returns it
  function processArray(numbers) {
    numbers.reverse();
    sum = 0;
    for (i = 0; i < numbers.length; i++) {
      sum += numbers[i] * i * 2;
    }
    return sum;
  }
  
  // printAsciiCharacter()
  // Args: A number
  // Removes any duplicate digits in the number
  // Replaces them with a singular instance ie: 110 = 10
  // Multiplies that number by 4
  // Returns the ASCII character that has the same value of the number
  function printAsciiCharacter(number) {
    const str = number.toString();
    let charArray = str.split('');
    let uniqueChars = [...new Set(charArray)];
    const newString = uniqueChars.join('');
    const newNumber = parseInt(newString);
    return String.fromCharCode(newNumber * 4);
  }
  
  fibonacci = firstTenFibonacci();
  summed = processArray(fibonacci);
  ascii = printAsciiCharacter(summed);
  
  console.log(ascii);