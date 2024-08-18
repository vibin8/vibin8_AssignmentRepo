// IU2141050175 - PRIYA KUMARI

// 1: Write a function `isAnagram` which takes 2 parameters and returns true/false if those are anagrams or not.
function isAnagram(str1, str2) {
    // Normalize the strings: convert to lowercase, remove non-alphanumeric characters, and sort the characters
    const normalize = str => str.toLowerCase().replace(/[\W_]/g, '').split('').sort().join('');
    // Compare the normalized strings
    return normalize(str1) === normalize(str2);
}
console.log(isAnagram("listen", "silent")); // true
console.log(isAnagram("hello", "world")); // false

// 2: Implement a function `calculateTotalSpentByCategory` which takes a list of transactions as parameter
// and returns a list of objects where each object is unique category-wise and has total price spent as its value.
function calculateTotalSpentByCategory(transactions) {
    const categoryTotals = {};
    // Iterate through each transaction
    transactions.forEach(transaction => {
        // Initialize category if not already present
        if (!categoryTotals[transaction.category]) {
            categoryTotals[transaction.category] = 0;
        }
        // Accumulate the price for each category
        categoryTotals[transaction.category] += transaction.price;
    });
    // Convert the accumulated totals into an array of objects
    return Object.keys(categoryTotals).map(category => ({
        category: category,
        totalSpent: categoryTotals[category]
    }));
}
console.log(calculateTotalSpentByCategory([
    { category: 'groceries', price: 100 },
    { category: 'electronics', price: 200 },
    { category: 'groceries', price: 150 }
])); // [{ category: 'groceries', totalSpent: 250 }, { category: 'electronics', totalSpent: 200 }]

// 3: Write a function `findLargestElement` that takes an array of numbers and returns the largest element.
function findLargestElement(numbers) {
    // Use Math.max with the spread operator to find the largest element
    return Math.max(...numbers);
}
console.log(findLargestElement([1, 2, 3, 4, 5])); // 5

// 4: Implement a function `isPalindrome` which takes a string as argument and returns true/false as its result.
function isPalindrome(str) {
    // Remove non-alphanumeric characters and convert to lowercase
    const cleanedStr = str.replace(/[\W_]/g, '').toLowerCase();
    // Check if the cleaned string is equal to its reverse
    return cleanedStr === cleanedStr.split('').reverse().join('');
}
console.log(isPalindrome("racecar")); // true
console.log(isPalindrome("hello")); // false

// 5: Write a function that calculates the time (in seconds) it takes for the JS code to calculate sum from 1 to n, given n as the input.
function calculateTime(n) {
    // Record the start time
    const startTime = Date.now();
    let sum = 0;
    // Calculate the sum from 1 to n
    for (let i = 1; i <= n; i++) {
        sum += i;
    }
    // Record the end time
    const endTime = Date.now();
    // Calculate and return the elapsed time in seconds
    return (endTime - startTime) / 1000;
}
console.log(calculateTime(1000000)); // Time in seconds

// 6: Implement a function `countVowels` that takes a string as an argument and returns the number of vowels in the string.
function countVowels(str) {
    // Use a regular expression to match all vowels (case-insensitive) and count them
    return (str.match(/[aeiou]/gi) || []).length;
}
console.log(countVowels("hello")); // 2

// 7: Write a function `sumArray` that takes an array of numbers as input and returns the sum of all the numbers.
function sumArray(numbers) {
    // Use the reduce method to sum all elements in the array
    return numbers.reduce((sum, number) => sum + number, 0);
}
console.log(sumArray([1, 2, 3, 4, 5])); // 15

// 8: Implement a function `filterEvenNumbers` that takes an array of numbers and returns a new array containing only the even numbers.
function filterEvenNumbers(numbers) {
    // Use the filter method to select only the even numbers
    return numbers.filter(number => number % 2 === 0);
}
console.log(filterEvenNumbers([1, 2, 3, 4, 5])); // [2, 4]

// 9: Write a function `findSmallestElement` that takes an array of numbers and returns the smallest element.
function findSmallestElement(numbers) {
    // Use Math.min with the spread operator to find the smallest element
    return Math.min(...numbers);
}
console.log(findSmallestElement([1, 2, 3, 4, 5])); // 1

// 10: Create a function `reverseString` that takes a string and returns the string reversed.
function reverseString(str) {
    // Split the string into an array of characters, reverse the array, and join it back into a string
    return str.split('').reverse().join('');
}
console.log(reverseString("hello")); // "olleh"

// 11: Write a function `fibonacci` that takes a number `n` and returns the `n`th number in the Fibonacci sequence.
function fibonacci(n) {
    if (n <= 1) return n;
    let a = 0, b = 1;
    // Use a loop to calculate the nth Fibonacci number
    for (let i = 2; i <= n; i++) {
        [a, b] = [b, a + b];
    }
    return b;
}
console.log(fibonacci(7)); // 13

// 12: Implement a function `removeDuplicates` that takes an array and returns a new array with duplicate values removed.
function removeDuplicates(arr) {
    // Use a Set to remove duplicate values and convert it back to an array
    return [...new Set(arr)];
}
console.log(removeDuplicates([1, 2, 2, 3, 4, 4, 5])); // [1, 2, 3, 4, 5]

// 13: Write a function `countOccurrences` that takes a string and a character and returns the number of times the character appears in the string.
function countOccurrences(str, char) {
    // Use a regular expression to match all occurrences of the character (case-insensitive) and count them
    return (str.match(new RegExp(char, 'gi')) || []).length;
}
console.log(countOccurrences("hello", "l")); // 2

// 14: Create a function `findCommonElements` that takes two arrays and returns a new array containing the elements that are present in both arrays.
function findCommonElements(arr1, arr2) {
    // Use the filter method to select elements that are present in both arrays
    return arr1.filter(element => arr2.includes(element));
}
console.log(findCommonElements([1, 2, 3], [2, 3, 4])); // [2, 3]

// 15: Implement a function `sortStrings` that takes an array of strings and returns the array sorted in alphabetical order.
function sortStrings(arr) {
    // Use the sort method to sort the strings alphabetically
    return arr.sort();
}
console.log(sortStrings(["banana", "apple", "cherry"])); // ["apple", "banana", "cherry"]
