//
//  ChannelVC.swift
//  Jive
//
//  Created by Dan Lindsay on 2017-09-18.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    //MARK: IBOutlets
    
    @IBOutlet weak var loginBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    //MARK: IBActions
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {}

}
