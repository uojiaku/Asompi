func sortedSquaredArray(_ array: [Int]) -> [Int] {
    var sortedSquares = Array(repeating: 0, count: array.count)
        // initializes array with values of 0 for length of var arr
    for i in stride(from: 0, to: array.count, by: 1) {  // stride is a function
        let value = array[i]         // retrieve initial value
        sortedSquares[i] = value * value // add squared value to final array
    }
    sortedSquares.sort()   // sort value
    return sortedSquares
}

var arr = [1,2,3,5,6,8,9]
print(sortedSquaredArray(arr))


func sortedSquaredArray2(_ array: [Int]) -> [Int] {
    var sortedSquares = Array(repeating: 0, count: array.count)

    var smallerValueIdx = 0
    var largerValueIdx = array.count - 1

    for idx in stride(from: array.count - 1, through: 0, by: -1) {
        let smallerValue = array[smallerValueIdx]
        let largerValue = array[largerValueIdx]

        if abs(smallerValue) > abs(largerValue) {
            sortedSquares[idx] = smallerValue * smallerValue
            smallerValueIdx += 1
        } else {
            sortedSquares[idx] = largerValue * largerValue
            largerValueIdx -= 1
        }
    }
    return sortedSquares
}

var arr2 = [1,2,3,5,6,8,9]
print(sortedSquaredArray2(arr))
