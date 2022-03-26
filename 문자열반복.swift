
import Foundation

if var n = readLine().map{Int($0)!}{
    for i in 1...n{
        var a = readLine()!.split(separator: " ")
        var num = Int(a[0])!
        var s = a[1]
        for j in s {
            for k in 0..<num{
                print("\(j)",terminator: "")
            }
        }
        print("")
    }
}
