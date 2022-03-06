import Foundation

let c = readLine()!
var a = readLine()!.split(separator : " ").map{ Int($0)! }
var sum = 0 

for i in a {
    if i == 1{
        sum += 1
        continue
    }
    for j in 2..<i{
       if i%j==0{
           sum += 1
           break
       }
    }
    
}
print(a.count - sum)
