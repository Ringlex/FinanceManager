//
//  TextInputHelper.swift
//  FinanceManager
//
//  Created by Bercik on 27/12/2023.
//

import Foundation
import UIKit

func preparePlaceholder(name : String) -> NSAttributedString {
    return NSAttributedString(string: name, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
}
