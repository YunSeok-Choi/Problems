import Foundation

if var a = readLine()?.split(separator: " ").map{Int($0)!}{
    let n = a[0]
    let k = a[1]
    
    var dp = Array(repeating: Array(repeating: 1, count: 30), count: 30)
    dp[2][1] = 2
    
    if n > 2{
        for i in 3..<n{
            for j in 1..<i{
                dp[i][j] = dp[i-1][j-1]+dp[i-1][j]
            }
        }
        print(dp[n-1][k-1])
    }else {
        print(1)
    }
}
