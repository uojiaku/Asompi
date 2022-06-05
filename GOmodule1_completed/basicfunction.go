package main

import "fmt"

func basic() {
	k := 1
	for ; k <= 10; k++ {
		fmt.Println(k)
	}
}

func main() {
	basic()
}
