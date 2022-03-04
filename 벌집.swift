var n = Int(readLine()!)!
n -= 1
var a = 1

while n >= 1 {
    n -= 6*a
    a += 1
}

print(a)
