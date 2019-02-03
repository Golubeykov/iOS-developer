import Cocoa

func even (a:Int) -> String {
    if a%3==0 {
        let result : String = "Делится на 3 без остатка"
        return result
    } else {
        let resid = a%3
        let result : String = "Не делится на 3 без остатка, остаток: " + String (resid)
        return result
    }
    
}

print(even(a:7))
