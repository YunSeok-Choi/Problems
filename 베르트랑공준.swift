
import Foundation
var a = [Bool](repeating: true, count: 1000001)

while true{
    let c = readLine().map{Int($0)!}
    var n : Int! = 0
    n = c
    var sum = 0
    let n2 = n*2
    
    a[0] = false
    a[1] = false
    
    if n == 0 {
        break
    }

    for i in 2...n2{
        if a[i] == false {
            continue
        }
        var con = i * 2
    
        while con <= n2 {
            a[con] = false
            con += i
        }
    }
    for i in n+1...n2{
        if a[i] {
            sum += 1
        }
    }
    print(sum)
    
}
