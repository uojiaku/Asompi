package main

import "fmt"

func sum(list []int) int {
	total := 0
	for _, i := range list {
		total += i
	}
	return total
}

func main() {
	arr := []int{1, 2, 3, 4}
	fmt.Print(sum(arr), "\n")
}
