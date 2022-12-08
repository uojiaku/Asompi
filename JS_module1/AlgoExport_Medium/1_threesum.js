arr = [12, 3, 1, 2, -6, 5, -8, 6]
target = 0

const threesum = (array, targetSum) => {
    array.sort((a, b) => a - b)
    const triplets = [];
    for (var i = 0; i < array.length - 2; i++) {
        let left = i + 1;
        let right = array.length - 1
        while (left < right) {
            currentSum = array[i] + array[left] + array[right]
            if (currentSum == targetSum) {
                triplets.push([array[i], array[left], array[right]])
                left++;
                right--;
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