//
//  TodaysExpensesCell.swift
//  FinanceManager
//
//  Created by Bercik on 13/01/2024.
//

import UIKit

class TodaysExpensesCell: UITableViewCell {

    @IBOutlet weak var exensesPlace: UILabel!
    @IBOutlet weak var expensesTitle: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var expensesImage: UIView!
    
    public static var identifier :String {
        get {
            return "TodaysExpensesCell"
        }
    }
    
    public static func register() -> UINib {
        UINib(nibName: "TodaysExpensesCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        expensesImage.layer.cornerRadius = expensesImage.layer.bounds.width/2
    }
    
    func setCell(colorWheel: UIColor, expensesPlace: String, amount: Double){
        self.expensesImage.backgroundColor = colorWheel
        self.exensesPlace.text = expensesPlace
        self.expensesTitle.text = expensesPlace
        self.amount.text = "\(amount) zł"
    }

    
}
