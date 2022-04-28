//
//  SignUpFinishView.swift
//  QuicDisMessenger
//
//  Created by Matthew Ochoa on 4/27/22.
//  Copyright © 2022 Matthew Ochoa. All rights reserved.
//

import UIKit
import Firebase

class SignUpFinishView: UIViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var usernameField: UITextField!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = Auth.auth().currentUser
        if let user = user {
          let uid = user.uid
          let email = user.email
          }
        
        self.emailLabel.text = user?.email

        
    }
    @IBAction func submitChanges(_ sender: Any) {
        
        let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
        changeRequest?.displayName = usernameField.text
        
        changeRequest?.commitChanges { error in
            if let Error = error {
                print("Something went wrong")
                print(Error)
            }else{
                let user = Auth.auth().currentUser
                let userName = user?.displayName
                print("Updated Username")
                print(userName ?? String())
                
                self.performSegue(withIdentifier: "mainScreen", sender: nil)
                
            }
        
        }
            
        
        
        
    }
    

    

}
