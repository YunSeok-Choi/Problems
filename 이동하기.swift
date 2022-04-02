import Foundation

var n = readLine()!.split(separator: " ").map{Int($0)!}

var dp = [[Int]](repeating: Array(repeating: 0, count: n[1]), count: n[0])
var a = [[Int]](repeating: Array(repeating: 0, count: n[1]), count: n[0])

for i in 0..<n[0]{
    let b = readLine()!.split(separator: " ").map{Int($0)!}
    for j in 0..<b.count{
        a[i][j] = b[j]
    }
}

dp[0][0] = a[0][0]

for i in 0..<n[0]{
    for j in 0..<n[1]{
        if i == 0 && j != 0{
            dp[i][j] += dp[i][j-1] + a[i][j]
        }else if j == 0 && i != 0{
            dp[i][j] += dp[i-1][j] + a[i][j]
        }else if i > 0 && j > 0{
            if dp[i][j-1] > dp[i-1][j]{
                dp[i][j] += dp[i][j-1] + a[i][j]
            }else {
                dp[i][j] += dp[i-1][j] + a[i][j]
            }
        }
    }
}
var max = 0
for i in 0..<n[0]{
    for j in 0..<n[1]{
        if dp[i][j] > max{
            max = dp[i][j]
        }
    }
}
print(max)
