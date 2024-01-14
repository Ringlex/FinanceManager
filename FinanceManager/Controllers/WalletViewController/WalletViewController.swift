//
//  WalletViewController.swift
//  FinanceManager
//
//  Created by Bercik on 28/12/2023.
//

import UIKit

class WalletViewController: UIViewController {
    
    @IBOutlet weak var totalView: TotalView!
    @IBOutlet weak var saveCardView: SavedCardView!
    @IBOutlet weak var bottomSearchButton: UIButton!
    @IBOutlet weak var allButton: UIButton!
    @IBOutlet weak var ascendingButton: UIButton!
    @IBOutlet weak var descendingButton: UIButton!
    @IBOutlet weak var chartView: ChartStatistics!
    @IBOutlet weak var lastExpensesList: UITableView!
    @IBOutlet weak var todaysExpensesList: UITableView!
    @IBOutlet weak var todaysExpensesView: UIView!
    
    var viewModel = WalletViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true

        configWalletView()
    }
    
    func configWalletView() {
        let buttonRadius = 15.0
        
        allButton.layer.cornerRadius = buttonRadius
        ascendingButton.layer.cornerRadius = buttonRadius
        descendingButton.layer.cornerRadius = buttonRadius
        todaysExpensesView.layer.cornerRadius = 20
        todaysExpensesList.layer.cornerRadius = 20
        todaysExpensesList.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
        
        setupLastExpensesList()
       
    }

}
