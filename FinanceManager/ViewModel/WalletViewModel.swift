//
//  WalletViewModel.swift
//  FinanceManager
//
//  Created by Bercik on 12/01/2024.
//

import Foundation
import FirebaseAuth



class WalletViewModel {
   
    
    let expensesList = [Expense(place: "Zara", amount: 10.99), Expense(place: "Biedronka", amount: 101.99),Expense(place: "Sinsey", amount: 80.99)]
    
    let todaysExpensesList = [Expense(place: "Zara", amount: 10.99), Expense(place: "Biedronka", amount: 101.99),Expense(place: "Sinsey", amount: 80.99),Expense(place: "Zara", amount: 10.99), Expense(place: "Biedronka", amount: 101.99),Expense(place: "Sinsey", amount: 80.99),Expense(place: "Zara", amount: 10.99), Expense(place: "Biedronka", amount: 101.99),Expense(place: "Sinsey", amount: 80.99)]
    
    func numberOfRowsExpensesList() -> Int {
        self.expensesList.count
    }
    
    func numberOfRowsTodaysExepensesList() -> Int {
        self.todaysExpensesList.count
    }
    
    func signOut() {
        try! Auth.auth().signOut()
        
    }
    
}
