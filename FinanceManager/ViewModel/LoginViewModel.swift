//
//  LoginViewModel.swift
//  FinanceManager
//
//  Created by Bercik on 24/12/2023.
//

import Foundation
import FirebaseAuth

class LoginViewModel{
    var isLogged: Observable<Bool> = Observable(false)
    
    func checkIfUserIsAuthenticated() -> String? {
        if Auth.auth().currentUser?.uid != nil {
            return Auth.auth().currentUser?.uid
        }
        
        return nil
    }
    
    func login(email: String, password: String) {
        
        Auth.auth().signIn(withEmail: email, password: password){ (authResult, error) in
            if error != nil  {
                
            } else {
                print("User signs in successfully")
                
                self.isLogged.value = true
            }
            
        }
        
        
    }
}
