// Asterisk & Words
// Cooking Hamburger
//
// the buns are at the top and bottom: console.log('*'.repeat(11))
// the onions are to be cut up by the spaces.. in this case we cut up the array by the spaces
// both the lettuce and beef wrapped in loop of how many times we season it, we'll season it for the amount of cut up onions
    // the lettuce symbolizes putting it together..let us: console.log('* ' + arr[i] + space + '*')
    // the beef is where we cook space.. an Array of space. each slice of onion matches a partion of the beef. the smaller the onion slice, the bigger the beef size. 
       // the bigger the onion slice, the smaller the beef size. but altogether the space is joined together. 


       const Gala = () => {
        console.log('*'.repeat(11))
        const arr = "Gala Games is Hiring!".split(" ")
    
        for (var i = 0; i < arr.length; i++){
        
            var space = Array(8 - arr[i].length).fill(' ').join('')
        console.log('* ' + arr[i] + space + '*')
      }
        console.log('*'.repeat(11))
    
    }
    
    Gala()