var n = Int(readLine()!)!
var s = Int(readLine()!)!
var t = 1, l = 1, x = n / 2, y = n / 2
var a = [[Int]](repeating: Array(repeating: 0, count: n), count: n)

while true{
    for i in 0..<l {
        a[y][x] = t
        y -= 1
        t += 1
    }
    if t - 1 == n * n {
        break
    }
    for i in 0..<l{
        a[y][x] = t
        x += 1
        t += 1
    }
    l += 1
    for i in 0..<l{
        a[y][x] = t
        y += 1
        t += 1
    }
    for i in 0..<l{
        a[y][x] = t
        x -= 1
        t += 1
    }
    l += 1
}

for i in 0..<n{
    for j in 0..<n{
        print(a[i][j], terminator: " ")
        if s == a[i][j]{
            y = i
            x = j
        }
    }
    print()
}
print("\(y + 1) \(x + 1)")
