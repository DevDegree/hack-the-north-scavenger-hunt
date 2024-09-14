// firstTenFibonacci()
// Finds the 1st 10 numbers in the Fibonacci Sequence
// Saves each number as elements in an array
// Returns that array
function firstTenFibonacci() {
  return [0, 1, 1, 2, 3, 5, 8, 13, 21, 34];
}

// processArray(numbers)x
// Args: An array of numbers
// Reverses the array
// Multiplies each number by it's index * 2
// Sums the numbers in the array together and returns it
function processArray(numbers) {
  const reversed = [...numbers].reverse();
  let sm = 0;
  for (let i = 0; i < reversed.length; i++) {
    reversed[i] *= i * 2;
    sm += reversed[i];
  }
  return sm;
}

// printAsciiCharacter()
// Args: A number
// Removes any duplicate digits in the number
// Replaces them with a singular instance ie: 110 = 10
// Multiplies that number by 4
// Returns the ASCII character that has the same value of the number
function printAsciiCharacter(number) {
  const numStr = number.toString();
  const seen = new Set();
  let singInstance = "";

  for (const c of numStr) {
    if (!seen.has(c)) {
      singInstance += c;
      seen.add(c);
    }
  }

  singInstance = parseInt(singInstance) * 4;
  return String.fromCharCode(singInstance);
}

fibonacci = firstTenFibonacci();
summed = processArray(fibonacci);
ascii = printAsciiCharacter(summed);

console.log(fibonacci);
console.log(summed);
console.log(ascii);
