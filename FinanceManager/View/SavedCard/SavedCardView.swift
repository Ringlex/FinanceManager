//
//  SavedCardView.swift
//  FinanceManager
//
//  Created by Bercik on 02/01/2024.
//

import UIKit

class SavedCardView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        viewInit()
    }
    
    required  init?(coder: NSCoder) {
        super.init(coder: coder)
        viewInit()
        
    }
    
    func viewInit() {
        let viewCornerRadius = 20.0
        
        let xibView = Bundle.main.loadNibNamed("SavedCardView", owner: self)![0] as! UIView
        xibView.frame = self.bounds
        xibView.layer.cornerRadius = viewCornerRadius
        addSubview(xibView)
    }

}
