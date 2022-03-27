if var n = readLine(){
    var s = 1
    for i in n {
        print("\(i)", terminator: "")
        if s % 10 == 0 {
            print("")
        }
        s += 1
    }
}
