import Cocoa

func even (a:Int) -> String {
    if a%2==0 {
        let result : String = String(a) + " - четное"
        return result
    } else {
        let result : String = String(a) + " - нечетное"
        return result
    }
    
}

print(even(a:6))
