// Is Palindrome
// checks whether string is a palindrome

const p = require('./8_reverse')

 const pal = (str) => {
   if ( str == p.rev(str) ) {
     return true
   }
   
   else {
     return false
   }
   
 }
 
 module.exports = {pal}