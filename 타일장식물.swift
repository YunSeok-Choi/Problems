 if var n = Int(readLine()!){
    
    var dp = [UInt]()
    dp.append(4)
    dp.append(6)
    
    for i in 1..<n{
        dp.append(dp[i] + dp[i-1])
    }
    
    print(dp[n-1])
}
