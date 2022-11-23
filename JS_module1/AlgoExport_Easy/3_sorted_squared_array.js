 const arr = [1, 2, 3, 5, 6, 8, 9]

const sortedSquared = (array) => {
  const sortedSquares = new Array(array.length).fill(0);
  
  for (let idx = 0; idx < array.length; idx++) {
   // const value = array[idx];
   // sortedSquares[idx] = value * value;
   //  ------------- or ------------------
  
      sortedSquares[idx] = array[idx] * array[idx];

  }
  sortedSquares.sort((a, b) => a - b);
  return sortedSquares
}

console.log(sortedSquared(arr))

// first we create an array of zeros
// in a for loop,
//// use an index to assign a var to each num in the array
//// multiply the var by itself and assign with an index to num in the new array
// use the sort method to order from least to greatest
// return the new array
