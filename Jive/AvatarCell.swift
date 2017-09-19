//
//  AvatarCell.swift
//  Jive
//
//  Created by Dan Lindsay on 2017-09-19.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    //MARK: IBOutlets
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    
}
