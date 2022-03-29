 import Foundation

if var n = readLine()?.split(separator: " ").map{Int($0)!}{
    var m = [Int](1...n[1])
    var j = Int(readLine()!)!
    var a = [Int]()
    var sum = 0
    
    for _ in 0..<j{
        a.append(Int(readLine()!)!)
    }
    
    for i in a{
        while true{
            if m.contains(i){
                break
            }
            if i > m[m.count - 1]{
                for j in 0..<m.count{
                    m[j] = m[j] + 1
                }
            }else {
                for j in 0..<m.count{
                    m[j] = m[j] - 1
                }
            }
            sum += 1
        }
    }
    
    print(sum)
    
}
