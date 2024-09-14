// firstTenFibonacci()
// Finds the 1st 10 numbers in the Fibonacci Sequence
// Saves each number as elements in an array
// Returns that array
function firstTenFibonacci() {
    return [0,1,1,2,3,5,8,13,21,34];
  }
  
// processArray(numbers)
// Args: An array of numbers
// Reverses the array
// Multiplies each number by it's index * 2
// Sums the numbers in the array together and returns it
function processArray(numbers) {
    let sum = 0;
    numbers.reverse();

    numbers.forEach((element,index) => {
        sum += element*index*2
    });


    return sum;
}

// printAsciiCharacter()
// Args: A number
// Removes any duplicate digits in the number
// Replaces them with a singular instance ie: 110 = 10
// Multiplies that number by 4
// Returns the ASCII character that has the same value of the number
function printAsciiCharacter(number) {
    let text = number.toString();
    let newText = Array.from(new Set(text.split(''))).toString().replace(",","")
    console.log(newText)

    let num = Number(newText)
    return String.fromCharCode(num);
}

fibonacci = firstTenFibonacci();
summed = processArray(fibonacci);
ascii = printAsciiCharacter(summed);

console.log(ascii);
