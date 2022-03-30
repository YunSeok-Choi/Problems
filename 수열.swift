import Foundation

if var n = Int(readLine()!){
    var a = readLine()!.split(separator: " ").map{Int($0)!}
    
    var dp1 = [Int](repeating: 1, count: n), dp2 = [Int](repeating: 1, count: n)
    
    for i in 1..<n{
        if a[i] <= a[i-1]{
            dp1[i] = max(dp1[i], dp1[i-1]+1)
        }
        if a[i] >= a[i-1]{
            dp2[i] = max(dp2[i], dp2[i-1]+1)
        }
        
    }
    print(max(dp1.max()!, dp2.max()!))
}
