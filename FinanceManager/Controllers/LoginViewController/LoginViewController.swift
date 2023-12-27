//
//  LoginViewController.swift
//  FinanceManager
//
//  Created by Bercik on 23/12/2023.
//

import UIKit
import CustomToastView_swift

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginEmailTextField: UITextField!
    @IBOutlet weak var loginPasswordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    func configView() {
        loginEmailTextField.attributedPlaceholder = preparePlaceholder(name: "Email")
        
        loginPasswordTextField.attributedPlaceholder = preparePlaceholder(name: "Password")
    }
    
    @IBAction func signInButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton) {
        let registerController = RegisterViewController()
        
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(registerController, animated: true)
        }
    }
    
}
