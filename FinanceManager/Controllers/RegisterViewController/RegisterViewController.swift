//
//  RegisterViewController.swift
//  FinanceManager
//
//  Created by Bercik on 23/12/2023.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextInput: UITextField!
    @IBOutlet weak var passwordTextInput: UITextField!
    @IBOutlet weak var repeatPasswordTextInput: UITextField!
    
    var viewModel: RegisterViewModel = RegisterViewModel()
    
    init(){
        super.init(nibName: "RegisterViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
        
    }
    
    func configView() {
        self.navigationController?.isNavigationBarHidden = true
        
        emailTextInput.attributedPlaceholder = preparePlaceholder(name: "Email")
        passwordTextInput.attributedPlaceholder = preparePlaceholder(name: "Password")
        repeatPasswordTextInput.attributedPlaceholder = preparePlaceholder(name: "Confirm Password")
    }
    
    func clearFields() {
        emailTextInput.text = ""
        passwordTextInput.text = ""
        repeatPasswordTextInput.text = ""
    }
    
    func bindViewModel() {
        viewModel.isSuccess.bind { [weak self] isSuccess in
            guard let self = self, let isSuccess = isSuccess else {
                return
            }
            
            DispatchQueue.main.async {
                if isSuccess {
                    snackBar(with: self, text: "User registered!")
                }else {
                    snackBar(with: self, text: "Something went wrong!", isError: true)
                }
            }
            
            viewModel.isSuccess.value = nil
        }
    }
    
    @IBAction func signInButtonPressed(_ sender: UIButton) {
        DispatchQueue.main.async {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        
        if let email = emailTextInput.text, let password = passwordTextInput.text {
            viewModel.signUpUser(email: email, password: password)
            clearFields()
            bindViewModel()
        }else {
            snackBar(with: self, text: "Fields are not full fill!")
        }
    }
    
}
