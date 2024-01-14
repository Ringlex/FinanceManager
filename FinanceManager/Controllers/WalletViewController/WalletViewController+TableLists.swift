//
//  WalletViewController+LastExpensesList.swift
//  FinanceManager
//
//  Created by Bercik on 12/01/2024.
//

import Foundation
import UIKit

extension WalletViewController: UITableViewDelegate, UITableViewDataSource {
    
    func setupLastExpensesList() {
        self.lastExpensesList.delegate = self
        self.lastExpensesList.dataSource = self
        self.lastExpensesList.backgroundColor = .clear
        
        self.todaysExpensesList.delegate = self
        self.todaysExpensesList.dataSource = self
        self.todaysExpensesList.backgroundColor = .clear
        
        self.registerCells()
    }
    
    func registerCells() {
        lastExpensesList.register(LastExpensesCell.register(), forCellReuseIdentifier: LastExpensesCell.identifier)
        
        todaysExpensesList.register(TodaysExpensesCell.register(), forCellReuseIdentifier: TodaysExpensesCell.identifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return getNumberOfCells(table: tableView)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return getCell(table: tableView, index: indexPath)
    }
    
    func getCell(table: UITableView, index: IndexPath) -> UITableViewCell{
        var cell:UITableViewCell?
        
        if table == self.lastExpensesList{
            guard let cellLastExpenses = table.dequeueReusableCell(withIdentifier: LastExpensesCell.identifier, for: index) as? LastExpensesCell else {
                return UITableViewCell()
                
                
            }
            cellLastExpenses.setCell(colorWheel: UIColor(named: "chartColorPlus") ?? .clear, expensesPlace: viewModel.expensesList[index.row].place, amount: viewModel.expensesList[index.row].amount)
            
            cell = cellLastExpenses
        }
        else {
            guard let cellTodaysExpenses = table.dequeueReusableCell(withIdentifier: TodaysExpensesCell.identifier, for: index) as? TodaysExpensesCell else {
                return UITableViewCell()
                
                
            }
            cellTodaysExpenses.setCell(colorWheel: UIColor(named: "chartColorPlus") ?? .clear, expensesPlace: viewModel.todaysExpensesList[index.row].place, amount: viewModel.todaysExpensesList[index.row].amount)
            
            cell = cellTodaysExpenses
        }
        
        return cell!
    }
    
    func getNumberOfCells(table: UITableView) -> Int{
        var count: Int?
        
        if table == self.lastExpensesList{
            count = viewModel.numberOfRowsExpensesList()
        }
        else {
            count = viewModel.numberOfRowsTodaysExepensesList()
        }
        
        return count!
    }
    
}
