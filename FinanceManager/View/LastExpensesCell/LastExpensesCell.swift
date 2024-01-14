//
//  TableViewCell.swift
//  FinanceManager
//
//  Created by Bercik on 12/01/2024.
//

import UIKit

class LastExpensesCell: UITableViewCell {

    @IBOutlet weak var colorWheel: UIView!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var shortExpensesPlace: UILabel!
    @IBOutlet weak var expensesPlace: UILabel!
    @IBOutlet weak var amount: UILabel!
    
    public static var identifier :String {
        get {
            return "LastExpensesCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "LastExpensesCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backView.layer.cornerRadius = 20
        colorWheel.layer.cornerRadius = colorWheel.layer.bounds.width/2
    }
    
    func setCell(colorWheel: UIColor, expensesPlace: String, amount: Double){
        self.colorWheel.backgroundColor = colorWheel
        shortExpensesPlace.text = expensesPlace
        self.expensesPlace.text = expensesPlace
        self.amount.text = "\(amount) zł"
    }
    
}
