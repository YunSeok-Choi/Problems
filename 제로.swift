import Foundation

if let c = readLine().map{Int($0)!}{
    var a = [Int]()
    var sum = 0
    for _ in 1...c{
        var r = readLine().map{Int($0)!}
        if r == 0{
            a.removeLast()
        }else{
            a.append(r!)
        }
    }
    for i in a{
        sum += i
    }
    print(sum)
}
