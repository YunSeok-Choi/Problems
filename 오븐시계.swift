import Foundation

var a = readLine()!.split(separator : " ").map{ Int($0)! }
var c = readLine()!
var d = Int(c)!

var sum = a[1] + d
a[0] = a[0] + (sum/60)

if a[0] >= 24 {
    a[0] -= 24
    a[1] = sum % 60
    print("\(a[0]) \(a[1])")
}else {
    if (sum/60) >= 1 {
        a[1] = (sum%60)
    }
    else {
        a[1] = sum
    }
    print("\(a[0]) \(a[1])")
}
