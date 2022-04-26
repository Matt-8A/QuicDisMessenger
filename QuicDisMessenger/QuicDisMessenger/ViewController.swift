//
//  ViewController.swift
//  QuicDisMessenger
//
//  Created by Matthew Ochoa on 4/23/22.
//  Copyright © 2022 Matthew Ochoa. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var successAccount: UILabel!
    @IBOutlet weak var emailView: UILabel!
    
    
    @IBOutlet weak var passwordText: UITextField!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func signedUp(_ sender: Any) {
        
        
        Auth.auth().createUser(withEmail: (emailText.text ?? "") , password: (passwordText.text ?? "")) { (result, error) in
            if let _eror = error {
                //something bad happning
                print(_eror.localizedDescription )
            }else{
                //user registered successfully
                print("User account created")
                
                self.emailView.text = self.emailText.text
                
                self.emailView.isHidden = false
                self.successAccount.isHidden = false
                
                
            }
        }
        
        
    }
    
}

