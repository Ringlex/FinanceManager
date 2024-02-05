//
//  LoginViewController.swift
//  FinanceManager
//
//  Created by Bercik on 23/12/2023.
//

import UIKit
import CustomToastView_swift
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginEmailTextField: UITextField!
    @IBOutlet weak var loginPasswordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    var viewModel = LoginViewModel()
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        configView()
    }
    
    func configView() {
        loginEmailTextField.attributedPlaceholder = preparePlaceholder(name: "Email")
        
        loginPasswordTextField.attributedPlaceholder = preparePlaceholder(name: "Password")
    }
    
    func bindIsLogged() {
        let dashboardVC = DashboardViewController()
        
        viewModel.isLogged.bind { [weak self] isLogged in
            guard let self = self, let logged = isLogged else {
                return
            }
            
            DispatchQueue.main.async {
                if logged {
                    self.loginEmailTextField.text = nil
                    self.loginPasswordTextField.text = nil
                    self.navigationController?.pushViewController(dashboardVC, animated: true)
                    
                }
            }
            
            
            viewModel.isLogged.value = false
        }
    }
    
    @IBAction func signInButtonPressed(_ sender: UIButton) {
        
        
        if let email = loginEmailTextField.text, let password = loginPasswordTextField.text {
            
            viewModel.login(email: email, password: password)
            bindIsLogged()
            
        }
        
        
    }
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton) {
        let registerController = RegisterViewController()
        
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(registerController, animated: true)
        }
    }
    
}
