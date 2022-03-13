import Foundation

if let x = readLine().map({Int($0)!}){
    
    var a : [Int] = []
    var dic = [Int:Int]()
    var sum = 0
    var m = 1
    
    for _ in 0..<x{
        let r = readLine().map {Int($0)!}
        a.append(r!)
        dic[r!, default: 0] += 1
        sum += r!
    }
    a.sort()
    
    var t = 0
    for i in 1..<a.count {
        if a[i] == a[i-1] {
            if t == a[i]{
                m += 1
            }else {
                t = a[i]
            }
        }
    }
    
    let av = round(Double(sum) / Double(x))
    
    print(Int(av))
    print(a[a.count/2])
    let maxValue = dic.max(by: {$0.value < $1.value})?.value
    var mode = dic.filter({$0.value == maxValue}).keys.sorted()
    
    if mode.count > 1 {
        print("\(mode[1])")
    }else {
        print("\(mode[0])")
    }
    print(a.last! - a.first!)
    
}
