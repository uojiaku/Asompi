import Foundation

let date = Date() // now
let cal = Calendar.current
//let day: Int?
let day = cal.ordinality(of: .day, in: .year, for: date) as! Int
print(day)
//let x = day as! Int % 5 
let x = day % 4
print(x)
//print(day/10)


let arr = ["nkwo","eke", "orie", "afo"] 
print(arr[x])

let day_of_month = String(cal.component(.day, from: date))

print(day_of_month)

let weekday = String(cal.component(.weekday, from: date))
let weekInt = Int(weekday) ?? 0
let arr1 = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"] 

print(arr1[weekInt - 1])



