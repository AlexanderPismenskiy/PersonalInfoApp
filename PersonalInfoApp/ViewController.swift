//
//  ViewController.swift
//  PersonalInfoApp
//
//  Created by Alexander Pismenskiy on 25.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func logInButtonPressed() {
        checkUserName()
        checkPassword()
    }
       
    func checkUserName () {
        guard let inputName = userNameTextField.text, !inputName.isEmpty else {
            showAlert(with: "User name field is empty", and: "Please enter your user name")
            return
        }
    }
    
    func checkPassword () {
        guard let inputPassword = passwordTextField.text, !inputPassword.isEmpty else {
            showAlert(with: "Password field is empty", and: "Please enter your password")
            return
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userNameTextField.text == "Alex" && passwordTextField.text == "123456" {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = userNameTextField.text
        } else {
            showAlert(with: "Incorrect data", and: "Please check")
        }
    }
    
    
    @IBAction func userNameReminderButton() {
        showAlert(with: "Your User Name is", and: "Alex")
    }
    
    @IBAction func passwordReminderButton() {
        showAlert(with: "Your Password is", and: "12345")
    }
}


extension ViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


