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
    
    // Properties
    var avatarType = AvatarType.dark

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
        if darkLightSegmentControl.selectedSegmentIndex == 0 {
            avatarType = .dark
        } else {
            avatarType = .light
        }
        
        avatarCollectionView.reloadData()
    }
    
}

//MARK: Collection View Delegate

extension AvatarPickerVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if avatarType == .dark {
            UserDataService.instance.setAvatarName(avatarName: "dark\(indexPath.item)")
        } else {
            UserDataService.instance.setAvatarName(avatarName: "light\(indexPath.item)")
        }
        self.dismiss(animated: true, completion: nil)
    }
}

//MARK: Collection View DataSource

extension AvatarPickerVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = avatarCollectionView.dequeueReusableCell(withReuseIdentifier: AVATAR_CELL, for: indexPath) as? AvatarCell {
            cell.configureCell(index: indexPath.item, type: avatarType)
            
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
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var numberOfColumns: CGFloat = 3
        
        if UIScreen.main.bounds.width > 320 {
            numberOfColumns = 4
        }
        
        let spaceBetweenCells: CGFloat = 10
        let padding: CGFloat = 40
        let cellDimension = ((avatarCollectionView.bounds.width - padding) - (numberOfColumns - 1) * spaceBetweenCells) / numberOfColumns
        
        return CGSize(width: cellDimension, height: cellDimension)
    }
}













