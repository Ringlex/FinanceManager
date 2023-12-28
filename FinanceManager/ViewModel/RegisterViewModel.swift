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
                self.createUserInDB(userData: authResult)
                self.isSuccess.value =  true
            }
            
        }
    }
    
    func createUserInDB(userData: AuthDataResult?) {
        let user = User(email: userData?.user.email ?? "", userName: userData?.user.email ?? "")
        
        FStore.financeDB.collection(FStore.users).document(userData!.user.uid).setData(user.map)
    }
    
}
