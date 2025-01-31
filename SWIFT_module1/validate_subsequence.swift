func isValidSubsequence(_ array: [Int], _ sequence: [Int]) -> Bool {
    var arrIdx = 0
    var seqIdx = 0
    // initiate index of array and sequence
    while arrIdx < array.count, seqIdx < sequence.count {
        // while array index and sequence is less than 
        // the count of array and sequence
        if array[arrIdx] == sequence[seqIdx] {
            // if the values match, increment 
            seqIdx += 1
            
        }
         arrIdx += 1
    }
    return seqIdx == sequence.count
}

var arr = [5, 1, 22, 25, 6, -1, 8, 10] 
var seq = [1, 6, -1, 10]
print(isValidSubsequence(arr, seq))


func isValidSubsequence2(_ array: [Int], _ sequence: [Int]) -> String {
    var seqIdx = 0
    for value in array {
        
        if value == sequence[seqIdx] {
            seqIdx += 1
            print(seqIdx)
        }
        else if seqIdx == sequence.count {
            break
        }
    }
    // return seqIdx == sequence.count
    return String(seqIdx == sequence.count)
}


var arr2 = [5, 1, 22, 25, 6, -1, 8, 10] 
var seq2 = [1, 6, -1, 10]
print(isValidSubsequence2(arr2, seq2))