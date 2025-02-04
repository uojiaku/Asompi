// twosum3.js
// boxing twosum
// we are boxing random opponents from all ages.
// so we decide to sort the ages first, from least to greatest.
// THE GOAL: fight two people that with their ages combined is the magic number.
// left pointer is left hand, right pointer is right hand.
// targets are on the wall and sorted.
// AT THE SAME TIME: left jab starts hitting values to the far left & right jab hitting values to the far right.
// if the combining score less than what we want, we move the left jab to the next value over 
// if the combining score is greater than what we want, we move the right jab to the next value over

var arr = [1, 20, 3, 40, 5, 6, 12, 13]
var target = 25

const twosum3 = (arr, target) => {
  arr.sort((a,b) => a - b)
   console.log(arr)
    var left = 0
    var right = arr.length - 1
    while (left < right) {
   var currentSum = arr[left] + arr[right]
     if (currentSum == target) {
       return [arr[left], arr[right]]
     }
        else if (currentSum < target) {
       left++
        }
        else if (currentSum > target ) {
       right--
        }
      }
}
