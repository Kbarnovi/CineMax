//
//  LogInViewController.swift
//  CineMax
//
//  Created by Ketevan Barnovi on 10.02.25.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpButton.isUserInteractionEnabled = true

        func unwindToLogInVC(segue: UIStoryboardSegue) {
            print("Back to LogInVC")
            
        }

    }


}

