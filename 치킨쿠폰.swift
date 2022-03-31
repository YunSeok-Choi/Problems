
import Foundation

while var a = readLine()?.split(separator: " ").map{Int($0)!} {
    if a.isEmpty{
        break
    }
    var n = a[0], k = a[1]
    
    var chicken = 0
    chicken += n
    while n >= k {
        if n % k != 0 {
            var c = n % k
            n /= k
            chicken += n
            n += c
        }else {
            n /= k
            chicken += n
        }
    }
    print(chicken)
}
