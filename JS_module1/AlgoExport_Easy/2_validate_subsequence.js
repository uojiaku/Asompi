  var arr = [5, 1, 22, 25, 6, -1, 8, 10]
var seq = [1, 6, -1, 10]

const isValidSubsequence = (array, sequence) => {
    let arrIndex = 0
    let seqIndex = 0
    while (arrIndex < array.length && seqIndex < sequence.length) {
        if (array[arrIndex] === sequence[seqIndex]) 
            seqIndex++;
            arrIndex++;
            
        
    }
    return seqIndex === sequence.length;
}

console.log(isValidSubsequence(arr, seq))

// is it a valid subsequence?
// initialize the indexes
// while the indexes are less than the length of the array
//// if the arr num is = seq num, keep incrementing
// but when finally the number of seqIndex is = to the sequence length, return a true bool