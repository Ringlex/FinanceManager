//
//  SnackBar.swift
//  FinanceManager
//
//  Created by Bercik on 27/12/2023.
//

import Foundation
import CustomToastView_swift


func snackBar(with: UIViewController, text: String, isError : Bool = false){
    let toastFontSize = 17.0
    let toastCornerRadius = 12.0
    
    if(isError){
        Toast.Builder()
            .font(UIFont.systemFont(ofSize: toastFontSize, weight: .medium))
            .backgroundColor(UIColor(named: "error")!)
            .textColor(.white)
            .cornerRadius(toastCornerRadius)
            .title(text)
            .orientation(.topToBottom)
            .textAlignment(.center)
            .build()
            .show(on: with)
    }else {
        Toast.Builder()
            .font(UIFont.systemFont(ofSize: toastFontSize, weight: .medium))
            .backgroundColor(UIColor(named: "primaryColor")!)
            .textColor(.black)
            .cornerRadius(toastCornerRadius)
            .title(text)
            .orientation(.topToBottom)
            .textAlignment(.center)
            .build()
            .show(on: with)
    }
    
    
    
}
