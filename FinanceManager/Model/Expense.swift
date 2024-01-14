//
//  Expence.swift
//  FinanceManager
//
//  Created by Bercik on 24/12/2023.
//

import Foundation

class Expense {
    var place : String
    var amount : Double
    
    init(place: String, amount: Double) {
        self.place = place
        self.amount = amount
    }
}
