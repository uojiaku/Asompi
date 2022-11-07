var arr = [5, 1, 22, 25, 6, -1, 8, 10]
var seq = [1, 6, -1, 10]

const isValidSubsequence = (array, sequence) => {
    let arrIndex = 0
    let seqIndex = 0
    while (arrIndex < array.length && seqIndex < sequence.length) {
        if (array[arrIndex] === sequence[seqIndex]) 
            console.log("start " + seqIndex)
            seqIndex++;
            console.log("first " + seqIndex)
            console.log("first " + arrIndex)
            arrIndex++;
            console.log("second " + seqIndex)
            console.log("second " + arrIndex)

            
        
    }
    return seqIndex === sequence.length;
}

console.log(isValidSubsequence(arr, seq))