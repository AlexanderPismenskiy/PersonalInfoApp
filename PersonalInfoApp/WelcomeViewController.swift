//
//  WelcomeViewController.swift
//  PersonalInfoApp
//
//  Created by Alexander Pismenskiy on 25.10.2020.
//

import UIKit

class WelcomeViewController: UIViewController {
   
    @IBOutlet var userNameLabel: UILabel!
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let username = self.username else { return }
        userNameLabel.text = "Hellow, \(String(describing: username))"
    }
    


}
