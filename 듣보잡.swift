import Foundation

if var n = readLine()?.split(separator: " ").map{Int($0)!}{
    var a = Set<String>()
    var b = Set<String>()
    for _ in 0..<n[0]{
        a.insert(readLine()!)
    }
    for _ in 0..<n[1]{
        b.insert(readLine()!)
    }
    var c = a.intersection(b).sorted()
    
    print(c.count)
    
    for i in 0..<c.count{
        print(c[i])
    }
    
    
}
