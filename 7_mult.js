// multiply the numbers in the list

const mul = (items) => {
  var mylist = items[0]
  for (var i = 0; i < items.length; i++){
    if (i == 0){
      continue
  } else {
      mylist *= items[i]
    }
  }
  return mylist
}

module.exports = {mul}