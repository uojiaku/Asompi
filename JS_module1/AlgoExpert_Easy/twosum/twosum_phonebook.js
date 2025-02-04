// twosum2.js
//
// remember the sum of your area code

var arr = [2, 0, 2, 5, 2, 5, 6, 4, 0, 6]
var target = 4

const twosum2 = (arr, target) => {
  var somedictionary = {}
  for(var i of arr) {
    var difference = target - i;
    if(difference in somedictionary){
	console.log('here is difference:', difference)
	return [difference, i]
     }
     else {
	somedictionary[i] = true
	console.log('here is dictionary:', somedictionary)
     }
    
   }
  }

console.log(twosum2(arr, target))
console.log(arr.length)
