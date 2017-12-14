//
//  CreateAccountViewController.swift
//  Smack
//
//  Created by Kudryatzhan Arziyev on 12/14/17.
//  Copyright © 2017 Kudryatzhan Arziyev. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    @IBAction func closePressed(_ sender: UIButton) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton) {
        guard
            let email = emailTextField.text,
            !email.isEmpty,
            let password = passwordTextField.text,
            !password.isEmpty else { return }
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            
            if success {
                AuthService.instance.loginUser(email: email, password: password, completion: { (success) in
                    if success {
                        print("Logged in user!", AuthService.instance.authToken)
                    }
                })
            }
        }
        
    }
    
    @IBAction func chooseAvatarButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func generateBgColorButtonPressed(_ sender: UIButton) {
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
}
