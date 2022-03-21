import Foundation


if var n = readLine(){
    var a = readLine()!.split(separator: " ").map{Int($0)!}
    a.sort()
    var _ = readLine()
    var t = readLine()!.split(separator: " ").map{Int($0)!}
    for i in t{
        var s = 0
        var e = a.count - 1
        var t = false
        
        while s <= e {
            let mid = (s + e) / 2
            
            if a[mid] == i {
                print(1)
                t = true
                break
            }
            if a[mid] > i {
                e = mid - 1
            }else {
                s = mid + 1
            }
        }
        if !t {
            print(0)
        }
    }
    
}
