//
//  AvatarPickerVC.swift
//  Jive
//
//  Created by Dan Lindsay on 2017-09-19.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

class AvatarPickerVC: UIViewController {
    
    //MARK: IBOutlets

    @IBOutlet weak var avatarCollectionView: UICollectionView!
    @IBOutlet weak var darkLightSegmentControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        avatarCollectionView.delegate = self
        avatarCollectionView.dataSource = self
    }
    
    // MARK: IBActions
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func segmentControlChanged(_ sender: Any) {
        
    }
    
}

//MARK: Collection View Delegate

extension AvatarPickerVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

//MARK: Collection View DataSource

extension AvatarPickerVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = avatarCollectionView.dequeueReusableCell(withReuseIdentifier: AVATAR_CELL, for: indexPath) as? AvatarCell {
            return cell
        }
        return AvatarCell()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}

//MARK: Collection View Delegate Flow Layout

extension AvatarPickerVC: UICollectionViewDelegateFlowLayout {
    
}













