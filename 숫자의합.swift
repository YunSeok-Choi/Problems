import Foundation

let n = Int(readLine()!)!
let b = readLine()!.map{ Int(String($0))! }
var sum = 0

for i in b {
    sum += i    
}

print(sum)

