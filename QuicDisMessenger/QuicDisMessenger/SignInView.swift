//
//  SignInView.swift
//  QuicDisMessenger
//
//  Created by Matthew Ochoa on 4/28/22.
//  Copyright © 2022 Matthew Ochoa. All rights reserved.
//

import UIKit
import Firebase

class SignInView: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func signedIn(_ sender: Any) {
        
        let email = emailField.text
        let password = passwordField.text
        
        Auth.auth().signIn(withEmail: email!, password: password!){ result, error in
            
            if let Error = error {
                print("Issue trying to sign in")
            } else {
                
                print("Sign in Successful")
                self.performSegue(withIdentifier: "sendMainMenu", sender: nil)
            }
            
        }
        
        
    }
    
    

}
// .localizedDescription
