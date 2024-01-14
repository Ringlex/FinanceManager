//
//  Finance.swift
//  FinanceManager
//
//  Created by Bercik on 24/12/2023.
//

import Foundation

class Finance {
    var totalMonthAmount : Double
    var totalMonthExpense : Double
    var expences : [Expense]
    
    init(totalMonthAmount: Double, totalMonthExpense: Double, expences: [Expense]) {
        self.totalMonthAmount = totalMonthAmount
        self.totalMonthExpense = totalMonthExpense
        self.expences = expences
    }
}
