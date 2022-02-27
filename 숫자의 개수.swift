import Foundation
import Glibc
 
var a : Int = Int(readLine()!)!
var b : Int = Int(readLine()!)!
var c : Int = Int(readLine()!)!

var mul = a * b * c
var arr = [Int](repeating : 0, count : 10)

while mul > 0 {
    var div = mul % 10
    arr[div] += 1
    mul /= 10
}

arr.forEach { print($0) }
