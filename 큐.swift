import Foundation

var a = [Int]()

if var n = readLine(){
    for _ in 0..<Int(n)! {
        let x = readLine()!.split(separator: " ")
        if x.count == 2 {
            a.append(Int(x[1])!)
        }else {
            if x[0] == "pop"{
                if a.isEmpty {
                    print(-1)
                }else {
                    print(a.first!)
                    a.removeFirst()
                }
            }else if x[0] == "size"{
                print(a.count)
            }else if x[0] == "empty"{
                if a.isEmpty{
                    print(1)
                }else {
                    print(0)
                }
            }else if x[0] == "front"{
                if a.isEmpty{
                    print(-1)
                }else{
                    print(a.first!)
                }
            }else if x[0] == "back"{
                if a.isEmpty{
                    print(-1)
                }else {
                    print(a.last!)
                }
            }
                
        }
    }
}
