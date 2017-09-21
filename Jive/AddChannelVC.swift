//
//  AddChannelVC.swift
//  Jive
//
//  Created by Dan Lindsay on 2017-09-21.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {
    
    //MARK: IBOutlets
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var channelDescriptionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    @IBAction func createChannelPressed(_ sender: Any) {
        guard let channelName = nameTextField.text, nameTextField.text != "" else { return }
        guard let channelDesc = channelDescriptionTextField.text else { return }
        SocketService.instance.addChannel(channelName: channelName, channelDescription: channelDesc) { (success) in
            if success {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        
        nameTextField.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSForegroundColorAttributeName: purplePlaceholder])
        channelDescriptionTextField.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSForegroundColorAttributeName: purplePlaceholder])
    }
    
    func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }

}
