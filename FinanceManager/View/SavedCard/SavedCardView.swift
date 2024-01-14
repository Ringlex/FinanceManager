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
        
        let savedView = Bundle.main.loadNibNamed("SavedCardView", owner: self)![0] as! UIView
        savedView.frame = self.bounds
        savedView.layer.cornerRadius = viewCornerRadius
        addSubview(savedView)
    }

}
