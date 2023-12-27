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
    }

    @IBAction func signInButtonPressed(_ sender: UIButton) {
        DispatchQueue.main.async {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
    }
    
}
