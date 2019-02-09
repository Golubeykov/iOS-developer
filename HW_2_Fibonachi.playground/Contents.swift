import Cocoa

var row : [Int] = [1, 1]
var n : Int = 2
var a : Int = row [n-1]
var b : Int = row [n-2]
var c : Int = a + b
row.append(c)
n = 3

while n < 100 {
    a = row [n-1]
    b = row [n-2]
    c = a + b
    row.append (c)
    n += 1
}
print (row)

