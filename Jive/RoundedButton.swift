//
//  RoundedButton.swift
//  Jive
//
//  Created by Dan Lindsay on 2017-09-18.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

@IBDesignable

class RoundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.setupView() // he uses self.layer.cornerRadius = cornerRadius, which is what the method does
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
        
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }

}
