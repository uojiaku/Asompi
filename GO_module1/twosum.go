/*
   O(1) > O(n) > O(n^2)
   most efficient -> least efficient
   constant > linear > quadratic
*/
package main

import (
	"fmt"
	"sort"
)

// O(n^2) time | O(1) space
func twosum(array []int, targetSum int) []int {
	for i := 0; i < len(array)-1; i++ {
		firstNum := array[i]
		for j := i + 1; j < len(array); j++ {
			secondNum := array[j]
			if firstNum+secondNum == targetSum {
				return []int{firstNum, secondNum}
			}
		}
	}
	return []int{}
}

func main() {
	arr := []int{3, 5, -4, 8, 11, 1, -1, 6}
	target := 10

	fmt.Print(twosum(arr, target), "\n")
	fmt.Print(twosum2(arr, target), "\n")
	fmt.Print(twosum3(arr, target), "\n")

}

// O(n) time | O(n) space
func twosum2(array []int, targetSum int) []int {
	dict := map[int]bool{}
	for _, i := range array {
		potentialMatch := targetSum - i
		if _, found := dict[potentialMatch]; found {
			return []int{potentialMatch, i}
		}
		dict[i] = true
	}
	return []int{}
}

// O(nLog(n)) time | O(1) Space
func twosum3(array []int, target int) []int {
	sort.Ints(array)
	left, right := 0, len(array)-1
	for left < right {
		currentSum := array[left] + array[right]
		if currentSum == target {
			return []int{array[left], array[right]}
		} else if currentSum < target {
			left += 1
		} else {
			right -= 1
		}
	}
	return []int{}
}
