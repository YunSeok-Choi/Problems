import Foundation

if var _ = readLine(){
    var a = readLine()!.split(separator: " ").map{Int($0)!}
    
    var k = 0
    var o = 0
    for i in a {
        if i == 0 {
            k += 1
        }
    }
    if a.count == 1 {
        if a[0] != 0{
            print(a[0])
        }else {
            print(1)
        }
    }
    else if k > 0 {
        for i in 0..<a.count {
            if i < a.count - 1 && a[i] == a[i+1] && a[i] != 0{
                print(-1)
                o = 1
                break;
            }
            if a[i] == 0 {
                if i == 0{
                    if a[i+1] == 0{
                        a[i] = 1
                    }else if a[i+1] == 1 || a[i+1] == 2{
                        a[i] = 3
                    }else if a[i+1] == 2 || a[i+1] == 3{
                        a[i] = 1
                    }
                }
                else if i == a.count-1{
                    if a[i-1] == 1 || a[i-1] == 2{
                        a[i] = 3
                    }else if a[i-1] == 2 || a[i-1] == 3{
                        a[i] = 1
                    }
                }
                else {
                    let s = a[i-1]
                    let e = a[i+1]
                    if e == 0 {
                        if s == 3 {
                            a[i] = 2
                        }else {
                            a[i] = s + 1
                        }
                    }
                    else if s > e{
                        if s == 3{
                            a[i] = s - e
                        }else {
                            a[i] = s + e
                        }
                    }else if s == e{
                        if s - 1 != 0 {
                            a[i] = s - 1
                        }else {
                            a[i] = 2
                        }
                    }else {
                        if e == 3 {
                            a[i] = e - s
                        }else {
                            a[i] = e + s
                        }
                    }
                }
            }
        }
        var p : String = ""
        for i in a{
            p += "\(i) "
        }
        if o != 1{
            print(p)
        }
    }else {
        print(-1)
    }
}
