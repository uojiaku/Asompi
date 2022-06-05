// sums all numbers in a list

const sum = (items) => {
  var mylist = 0
  for (var i = 0; i < items.length; i++) {
   
    mylist += items[i]
    
  }
  return mylist
}

module.exports = {sum}