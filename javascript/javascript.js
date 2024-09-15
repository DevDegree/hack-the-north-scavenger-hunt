// firstTenFibonacci()
// Finds the 1st 10 numbers in the Fibonacci Sequence
// Saves each number as elements in an array
// Returns that array
function firstTenFibonacci() {
    return [0, 1, 1, 2, 3, 5, 8, 13, 21, 34];
  }
  
  // processArray(numbers)
  // Args: An array of numbers
  // Reverses the array
  // Multiplies each number by it's index * 2
  // Sums the numbers in the array together and returns it
  function processArray(numbers) {
    let reversed = numbers.slice().reverse(); // Reverse the array
    let sum = reversed.reduce((acc, num, idx) => acc + num * (idx * 2), 0); // Calculate the sum
    return sum;
}

  // printAsciiCharacter()
  // Args: A number
  // Removes any duplicate digits in the number
  // Replaces them with a singular instance ie: 110 = 10
  // Multiplies that number by 4
  // Returns the ASCII character that has the same value of the number
  function printAsciiCharacter(number) {
    let numStr = number.toString();
    let uniqueDigits = [...new Set(numStr)].join(''); // Remove duplicate digits
    let resultNumber = parseInt(uniqueDigits) * 4;
    return String.fromCharCode(resultNumber);
}
  
  fibonacci = firstTenFibonacci();
  summed = processArray(fibonacci);
  ascii = printAsciiCharacter(summed);
  
  console.log(ascii);