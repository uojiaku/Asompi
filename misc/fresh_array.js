// retry sum everything in list


const myarr = () => {
  console.log("*".repeat(11))
  const arr = "Gala Games is hiring!".split(" ")
 
  for (var i = 0; i < arr.length;i++){
    console.log("* " + arr[i])
  }
  console.log("*".repeat(11))
}

module.exports = {myarr}