# algorithmModules

**JS** **Python** **Swift** **Java** **C++** **Solidity** **Golang**

## Space Time Complexity

Instead of asking how much time it takes to run this function, ask how does the runtime of this function grow as the size of the input grows?
This question is answered with Big O Notation and Time Complexity
runtime = time it takes to execute a piece of code
*O(n)* -> linear 
*O(1)* -> constant
*O(n^2)* -> quadratic

O(1) > O(n) > O(n^2)
most efficient -> least efficient
constant > linear > quadratic

### Two Number Sum
Time complexity O(n) - where N represents the length of our input array. 
It is O(n) time because we're traversing the array only once. 
Each number we're calculating for y. 
Then we're just accessing values in hash table which in going to run in constant time. 

Space complexity O(n) - because we are adding values to the hash table

Another method would be sorting the data which would take O(nlog(n)) time and O(1) space.

**Twosum -> nested for loop, hashing, sort method.**
1. what connects a for loop and array is the attached i(teration) to the array index.

**Threesum -> array manipulation**
1. CurrentSum = CurrentNum + Left + Right








