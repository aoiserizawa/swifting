//: Playground - noun: a place where people can play

import UIKit

enum CreditCardError: ErrorType{
    case ExceededCreditCardLimit(amountExceeded: Int)
}

class CreditCard{
    
    let creditCardLimit = 1000
    
    var creditbalance = 0
    
    func purchase(let amount: Int) throws{
        
        if creditbalance + amount > creditCardLimit {
            
            throw CreditCardError.ExceededCreditCardLimit(amountExceeded: amount-creditCardLimit)
            
        }else {
            creditbalance += amount
            
            print("your current balance is $\(creditbalance)")
        }
    }
}

let masterCard = CreditCard()


do{
    try masterCard.purchase(9000)
}
catch CreditCardError.ExceededCreditCardLimit(let amount) {
    
    print("Coud not make a purchase because you Exceeded at this amount \(amount)")
}
