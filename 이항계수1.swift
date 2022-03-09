import Foundation

var q = readLine()!.split(separator: " ").map{Int($0)!}

func fac(c : Int) -> Int{
    if c == 0 {
        return 1
    }else if c == 1 {
        return 1
    } else {
        return c * fac(c:c-1)
    }
}

var n = fac(c:q[0])
var k = fac(c:q[1])
var m = fac(c : (q[0] - q[1]))

var two  = n / (k*m)

print(two)
