//
//  MainMenueView.swift
//  QuicDisMessenger
//
//  Created by Matthew Ochoa on 4/28/22.
//  Copyright © 2022 Matthew Ochoa. All rights reserved.
//

import UIKit
import Firebase

class MainMenueView: UIViewController {
    
    @IBOutlet weak var usernameDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let user = Auth.auth().currentUser
        let userName = user?.displayName
        
        self.usernameDisplay.text = userName
    }
    

    

}
