func nonConstructibleChange(_ coins: inout [Int]) -> Int {
    coins.sort()

    var currentChangeCreated = 0
    for coin in coins {
        if coin > currentChangeCreated + 1 {
            print(currentChangeCreated)
            return currentChangeCreated + 1
        }
        currentChangeCreated += coin
    }
    return currentChangeCreated + 1
}

var money = [5, 7, 1, 1, 2, 3, 22]
print(nonConstructibleChange(&money))