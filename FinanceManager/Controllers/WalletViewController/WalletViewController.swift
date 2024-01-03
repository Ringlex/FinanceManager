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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }

}
