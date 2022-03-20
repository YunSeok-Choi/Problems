import Foundation

var h = Int(readLine()!)!
var m = Int(readLine()!)!
var l = Int(readLine()!)!
var c = Int(readLine()!)!
var s = Int(readLine()!)!
    
    if h <= m && h <= l {
        if c <= s{
            print(h+c-50)
        }else {
            print(h+s-50)
        }
    }else if m <= h && m <= l {
        if c <= s{
            print(m+c-50)
        }else {
            print(m+s-50)
        }
    }else if l <= m && l <= h{
        if c <= s{
            print(l+c-50)
        }else {
            print(l+s-50)
        }
    }
   t
