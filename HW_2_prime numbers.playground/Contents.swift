import Cocoa

var n : Int = 200
var a : Int = 2
var numbers : [Int] = [2]
while a < n {
    a = a + 1
    numbers.append(a)
}
var row : [Int] = [2]
var c : [Int] = numbers + row
print(numbers)
