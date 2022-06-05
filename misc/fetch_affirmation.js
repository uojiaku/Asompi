// fetch affirmation

const fetch_all = () => {

  var track01 = { 'li' : 'listen' }
  var track02 = { 'he' : 'hear'   }
  var track03 = { 'ge' : 'genti'  }


  var track_arr = [track01, track02, track03]
  var arr = []

  const t = new Date().getDate()

  //for (var i = 0; i < track_arr.length; i++){
   var index = 0
    if (t++) {
     
      arr.push(track_arr[index])
      index++
    
     }
     else {
      arr.push(track_arr[index])
     }
    //}
  
  
   return arr

}

module.exports = {fetch_all} I'm