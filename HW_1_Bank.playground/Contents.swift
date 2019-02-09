import Cocoa
import Foundation

let deposit : Double = 100000
let interest : Double = 7
// interest in %

var income_per_year : Double = 1+interest/100

var income_y1 : Double = deposit*income_per_year
var income_y2 : Double = income_y1*income_per_year
var income_y3 : Double = income_y2*income_per_year
var income_y4 : Double = income_y3*income_per_year
var income_final : Double = income_y4*income_per_year

print(income_final)

