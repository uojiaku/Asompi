//// find the value where you cannot create change

coindeck = [5, 7, 1, 1, 2, 3, 22]

const nonConstructibleChange = (coins) => {
    coins.sort((a, b) => a - b);

    let currentChangeCreated = 0;
    for (const coin of coins) {
        if (coin > currentChangeCreated + 1)
           return currentChangeCreated + 1;
        currentChangeCreated += coin;
    }

    return currentChangeCreated + 1;
} 

console.log(nonConstructibleChange(coindeck))

// sort the set
// set the current change var to zero
// loop through every number in the array
//// if the number is greater than the current change
//// then return the current change + 1
//// if not add the number in the iteration to the existing current change
// return current change + 1