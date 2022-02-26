import Foundation

var a = [Int]()
var sum = 0
var k = 0
for i in 1...9 {
    var x = Int(readLine()!)!
    var c = x
    a.append(c)
    if sum < a.last!{
        sum = a.last!
        k = i
    }
}

print(sum)
print(k)
