 const arr = [1, 2, 3, 5, 6, 8, 9]

const sortedSquared = (array) => {
const sortedSquares = new Array(array.length).fill(0);
  
  for (let idx = 0; idx < array.length; idx++) {
    const value = array[idx];
    sortedSquares[idx] = value * value;
  }
  sortedSquares.sort((a, b) => a - b);
  return sortedSquares
}

console.log(sortedSquared(arr))
