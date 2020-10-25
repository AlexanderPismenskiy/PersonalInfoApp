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
        super .touchesBegan(touches, with: event)
    }
    
    @IBAction func userNameReminderButton() {
        showAlertName(with: "Your User Name is", and: "Alex")
    }
    
    @IBAction func passwordReminderButton() {
    }
}


extension ViewController {
    private func showAlertName(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
