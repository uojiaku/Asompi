# O(1) > O(n) > O(n^2)
# most efficient -> least efficient
# constant > linear > quadratic

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
def twosum2(array, targetSum):
    dictionary = {}
    for i in array:
        potentialMatch = targetSum - i
        if potentialMatch in dictionary:
            return [potentialMatch, i]
        else:
            dictionary[i] = True
            #print(potentialMatch)
            #print(dictionary)
    return []
    

print(twosum2(arr, target))

# O(nLog(n)) Time | O(1) Space
def twosum3(array, targetSum):
    array.sort()
    left = 0
    right = len(array) - 1
    while left < right:
        currentSum = array[left] + array[right]
        if currentSum == targetSum:
            return [array[left], array[right]]
        elif currentSum < targetSum:
            left += 1
        elif currentSum > targetSum:
            right -= 1
    return []

print(twosum3(arr, target))



# [-4, -1, 1, 3, 5, 6, 8, 11] -> ordered array from above

