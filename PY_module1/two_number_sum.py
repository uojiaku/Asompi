from ast import Num


arr = [3, 5, -4, 8, 11, 1, -1, 6]
target = 10

# sample output 
# [-1, 11]

# O(n^2) time | O(1) space
def twosum(array, targetSum):
    for i in range(len(array)):
        firstNum = array[i]
        for j in range(i + 1,len(array)):
            secondNum = array[j]
            if firstNum + secondNum == targetSum:
                return [firstNum, secondNum]

    return []


print(twosum(arr, target))

# O(n) time | O(n) space
def twoNumberSum(array, targetSum):
    dictionary = {}
    for i in array:
        potentialMatch = targetSum - i
        if potentialMatch in dictionary:
            return [potentialMatch, i]
        else:
            dictionary[i] = True
            print(potentialMatch)
            print(dictionary)
    return []
    

print(twoNumberSum(arr, target))

