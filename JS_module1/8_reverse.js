// reverse a string
// 'I am testing'  -> gnitset ma I

const rev = (str) => {
  var index = str.length - 1
  var word = ''
  for (var i = 0; i < index + 1; i++) {
    word += str[index - i]
  }
  return word
}

module.exports = {rev}