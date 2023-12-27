//
//  RegisterViewModel.swift
//  FinanceManager
//
//  Created by Bercik on 27/12/2023.
//

import Foundation
import FirebaseAuth

class RegisterViewModel {
    var isSuccess: Observable<Bool> = Observable(nil)
    
    func signUpUser(email: String, password: String){
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e)
                self.isSuccess.value = false
            } else {
                self.isSuccess.value =  true
            }
            
        }
        
        
    }
    
}
