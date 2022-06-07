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
