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
    tot = 0;
    numbers.reverse();
    for(i = 0 ; i < numbers.length ; i++) tot += numbers[i] * i * 2;
    return tot;
}

// printAsciiCharacter()
// Args: A number
// Removes any duplicate digits in the number
// Replaces them with a singular instance ie: 110 = 10
// Multiplies that number by 4
// Returns the ASCII character that has the same value of the number
function printAsciiCharacter(number) {
    number = number.toString();
    s = new Set();
    for(i = 0; i < number.length; i++) s.add(number[i]);
    s = Array.from(s).join('');
    parseInt(s, 10);
    return String.fromCharCode(s * 4);
}

fibonacci = firstTenFibonacci();
summed = processArray(fibonacci);
ascii = printAsciiCharacter(summed);

console.log(ascii);