/* 
   O(1) > O(n) > O(n^2)
   most efficient -> least efficient
   constant > linear > quadratic
*/
var arr = [3, 5, -4, 8, 11, 1, -1, 6]
var target = 10


// O(n^2) time | O(1) space
const twosum = (array, targetSum) => {
    for(var i = 0; i < array.length - 1; i++){
        var firstNum = array[i]
        for(var j = i + 1; j < array.length - 1; j++){
            var secondNum = array[j]
            if (firstNum + secondNum == targetSum) {
                return [firstNum, secondNum]
            }
        }
    }
    return []
}

console.log(twosum(arr, target))



// O(n) time | O(n) space
const twosum2 = (array, targetSum) => {
    var dict = {}
    for(var i of array){
        var potentialMatch = targetSum - i
        if (potentialMatch in dict){
            return [potentialMatch, i]
        } else {
            dict[i] = true
       }
    }
    return []
}

console.log(twosum2(arr, target))

// O(nLog(n)) time | O(1) Space
const twosum3 = (array, targetSum) => {
    array.sort((a, b) => a - b)
    var left = 0
    var right = array.length - 1
    while (left < right){
       var currentSum = array[left] + array[right]
    if (currentSum == targetSum) {
        return [array[left], array[right]]
    } else if (currentSum < targetSum) {
        left++
    } else if (currentSum > targetSum) {
        right--
    }
  }
  return []
}

console.log(twosum3(arr, target))

/* 
   array.sort((a, b) => a - b)
   negative number -> if a is smaller than b, then a will be sorted to the left of b
   positive number -> if a is bigger than b, then b will be sorted to the right of b
   zero happens when a and b are equal, then it doesn't matter whichb one comes first 
*/