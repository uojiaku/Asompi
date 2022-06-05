// 9. Is member.
// Checks whether a value x is contained in a group 
// of values.
//   1 -> [ 2, 1, 0 ] : True

const check_mem = (num, arr) => {
  for (i in arr) {
    if (arr.includes(num)){
      return true
    } else {
      return false
    }
  }
}

 module.exports = {check_mem}