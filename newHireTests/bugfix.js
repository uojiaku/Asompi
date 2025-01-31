function solution(a) {

    var indexOfMinimum = -1;
    var minimalSum = Number.MAX_VALUE;
  
    for (var i = 0; i < a.length; i++) {
      var sum = 0;
      for (var j = 0; j < a.length; j++) {
        sum += Math.abs(a[j] - a[i]);   // originally was  sum += Math.abs(a[j] - a[j]); 
      }
      console.log(Math.abs(a[1] - a[1]))   // added
      if (sum < minimalSum) {
        console.log(sum)    // added
        minimalSum = sum;
        indexOfMinimum = i;
      }
    }
  
    return a[indexOfMinimum];
  }

console.log(solution([1100, 11]))
