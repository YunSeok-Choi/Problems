var a = readLine()!.split(separator: " ").map{Int($0)!}

print((a[0]+a[1])%a[2])
print(((a[0]%a[2]) + (a[1]%a[2]))%a[2])
print((a[0]*a[1])%a[2])
print(((a[0]%a[2]) * (a[1]%a[2]))%a[2])
