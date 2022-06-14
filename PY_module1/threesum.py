arr = [12, 3, 1, 2, -6, 5, -8, 6]
target = 0

# concepts in this function:
# sort, => array.sort()
# create an empty array
# loop through array except the first digit, => for i in range(len(array) - 2)
## assign the left pointer to be the 2nd digit, => left = i + 1
## assign the right pointer to be the far most digit => len(array) - 1
## while loop left pointer less than right pointer
### define currentSum = 3 numbers in the array => use indexes
### if currentSum == target, append the 3 numbers in an array
### increment the left pointer
### decrement the right pointer
### if currentSum < target, increment left pointer
### if currentSum > target, decerement right pointer
# return the array

def threesum(array, targetSum):
    array.sort()
    triplets = []
    for i in range(len(array) - 2):
        left = i + 1
        right = len(array) - 1
        while left < right:
            currentSum = array[i] + array[left] + array[right]
            if currentSum == targetSum:
                triplets.append([array[i], array[left], array[right]])
                left += 1
                right -= 1
            elif currentSum < targetSum:
                left += 1
            elif currentSum > targetSum:
                right -= 1
    return triplets

print(threesum(arr, target))