// twosum.js
//
var random_height_bounces = [70, 11, 2, 13, 40, 15, 16]
var combo_height = 32

const twosum = (array, targetSum) => {			// targetSum = combo_height
    for(var i = 0; i < array.length - 1; i++){   	// i = bounce_order ; array = random_height_bounces
	console.log('this is i:', i)
        var firstNum = array[i]				// firstNum = height_bounce
        console.log('here is the firstNum:', firstNum)  // added
        for(var j = i + 1; j < array.length; j++){  // because j would be undefined if it isn't array.length, i + 1 because the first value is used for the twosum
	    console.log('this is j:', j)
            var secondNum = array[j]
            console.log('here is the secondNum', secondNum) // added
            if (firstNum + secondNum == targetSum) {
                return [firstNum, secondNum]
            }
        }
    }
    return []
}

console.log(twosum(random_height_bounce, combo_height))
console.log(random_height_bounce.length)