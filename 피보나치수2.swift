import Foundation

var dp = [Int]()
dp.append(0)
dp.append(1)

if let n = readLine().map{Int($0)!}{
    if n==0{
        print(0)
    }else if n==1{
        print(1)
    }else{
        for i in 2...n{
            dp.append(dp[i-2] + dp[i-1])
        }
        print(dp.last!)
    }
    
}
