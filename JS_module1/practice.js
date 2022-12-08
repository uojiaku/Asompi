var arr = [3, 5, -4, 8, 11, 1, -1, 6]
var target = 10

const practice = (array, targetSum) => {
    for (var i = 0; i < array.length - 1; i++) {
        var firstNum = array[i]
        for (var j = i + 1; j < array.length - 1; j++) {
            var secondNum = array[j]
            if (firstNum + secondNum == targetSum) {
                return [firstNum, secondNum]
            }
        }
        
    }
    return []
}

console.log(practice(arr, target))
console.log(arr.length)

const populateDictionary = (array, tar) => {
    var diction = {}
    for (i of array) {
        var potential = target - i
        if (potential in diction) {
            return [potential, i]
        } else {
            diction[i] = true
        }
    }
    return []
}

console.log(populateDictionary(arr, target))

const ar = [1, 2, 3, 5, 6, 8, 9]
const sortedSquares = new Array()
console.log(sortedSquares)