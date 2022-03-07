var n = Int(readLine()!)!
var m = Int(readLine()!)!
var sum = 0
var min = 0
for i in n...m {
    if i == 1{
        continue
    } else if i == 2{
        min = 2
        sum += 2
    } else if i == 3{
        if min == 0 {
            min = 3
            sum += 3
        }else {
            sum += 3
        }
    } else{
        for j in 2..<i{
            if i%j == 0 {
                break
            }
            else if j==i-1{
                if min == 0{
                    min = i
                    sum += i
                }else{
                    sum += i
                }
            }
        }
    }
}
if sum == 0 {
    print(-1)
}else{
    print(sum)
    print(min)
}

