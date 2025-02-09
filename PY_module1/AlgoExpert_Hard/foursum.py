array = [7, 6, 4, -1, 1, 2]
targetSum = 16

def fourNumberSum(array, targetSum):
    allPairSums = {}
    quadruplets = []
    for i in range(1, len(array) - 1):
        for j in range(i + 1, len(array)):
            currentSum = array[i] + array[j]
            difference = targetSum - currentSum
            if difference in allPairSums:
                for pair in allPairSums[difference]:
                    quadruplets.append(pair + [array[i], array[j]])
        
        for k in range(0, i):
            currentSum = array[i] + array[k]
            if currentSum not in allPairSums:
                allPairSums[currentSum] = [[array[k], array[i]]] ## created a brand new array of pairs
            else:
                allPairSums[currentSum].append([array[k], array[i]]) ## if it already exists, we can append the new pair to the existing pair 
    return quadruplets


print(fourNumberSum(array, targetSum))