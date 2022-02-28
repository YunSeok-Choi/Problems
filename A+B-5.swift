var a = readLine()!
var c = a.split(separator : " ")
var x = Int(c[0])!
var y = Int(c[1])!

while x != 0, y != 0 {
    print(x + y)
    a = readLine()!
    c = a.split(separator : " ")
    x = Int(c[0])!
    y = Int(c[1])!
}
