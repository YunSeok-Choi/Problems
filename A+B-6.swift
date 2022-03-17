import Foundation


if var t = readLine().map{Int($0)!}{
    for _ in 1...t{
        let a = readLine()!.split(separator: ",").map{Int($0)!}
        print("\(a[0] + a[1])")
    }
}
