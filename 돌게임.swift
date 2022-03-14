import Foundation

if let n = readLine().map{Int($0)!}{
    if n % 2 == 1{
        print("SK")
    }else {
        print("CY")
    }
}
