arr = [12, 3, 1, 2, -6, 5, -8, 6]
target = 0

const threesum = (array, targetSum) => {
    array.sort((a, b) => a - b)
    const triplets = [];[]
    for (var i = 0; i < array.length - 2; i++) {  // array.length - 2 because we need two remaining values to complete the threesum
        let left = i + 1;
        let right = array.length - 1
        while (left < right) {
            currentSum = array[i] + array[left] + array[right]
            if (currentSum == targetSum) {
                triplets.push([array[i], array[left], array[right]])
                left++;    // to continue looking for more combinations that make the threesum
                right--;    // to continue looking for more combinations that make the threesum
            } else if (currentSum < targetSum) {
                left++;
            } else if (currentSum > targetSum) {
                right--;
            }
        }
    }
    return triplets
}

console.log(threesum(arr, target))

// indexes are defined before the for loop

// summary: sorting, for loop & indexing, while loop