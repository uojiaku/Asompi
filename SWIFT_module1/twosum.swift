var arr = [3, 5, -4, 8, 11, 1, -1, 6]
var target = 10

// O(n^2) time | O(1) space
    func twosum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
        for i in 0 ..< array.count - 1 {
            let firstNumber = array[i]

            for j in i + 1 ..< array.count {
                let secondNumber = array[j]

                if firstNumber + secondNumber == targetSum {
                    return [firstNumber, secondNumber]
                }
            }
        }
        return []
    }





print(twosum(&arr, target))
// passing value of type [Int] to an inout parameter requires explicit &


// O(n) time | O(n) space
func twosum2(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    var numberHashMap = [Int: Bool]()

    for i in array {
        let potentialMatch = targetSum - i
        if let present = numberHashMap[potentialMatch], present {
            return [potentialMatch, i]
        }
        else {
            numberHashMap[i] = true
        }
    }
    return []
}

print(twosum2(&arr, target))


// O(nLog(n)) time | O(1) space
func twosum3(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    array.sort()

    var leftPointer = 0
    var rightPointer = array.count - 1

    while leftPointer < rightPointer {
        let leftMost = array[leftPointer]
        let rightMost = array[rightPointer]

        let currentSum = leftMost + rightMost

        if currentSum == targetSum {
            return [leftMost, rightMost]
        } else if currentSum < targetSum {
            leftPointer = leftPointer + 1
        } else if currentSum > targetSum {
            rightPointer = rightPointer - 1
        }
    }
    return []
}

print(twosum3(&arr, target))

// we return return [leftMost, rightMost] because we can't convert return array[leftPointer] + array[rightPointer]

