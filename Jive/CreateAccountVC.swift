//
//  CreateAccountVC.swift
//  Jive
//
//  Created by Dan Lindsay on 2017-09-18.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    //MARK: IBOutlets
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var profileImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //MARK: IBActions
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func chooseAvatarBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func generateBackgroundColorBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        
    }
    

}
