//
//  BenefitsViewController.swift
//  AUZero
//
//  Created by Sayalee on 21/8/2022.
//

import UIKit

class BenefitsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        switch indexPath.row {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell1", for: indexPath) as UICollectionViewCell
            cell.layer.cornerRadius = 10
            cell.layer.borderWidth = 0.7
            cell.layer.borderColor = UIColor.lightGray.cgColor
            return cell

        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell2", for: indexPath) as UICollectionViewCell
            cell.layer.cornerRadius = 10
            cell.layer.borderWidth = 0.7
            cell.layer.borderColor = UIColor.lightGray.cgColor
            return cell

        case 2:
            let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell3", for: indexPath) as UICollectionViewCell
            cell.layer.cornerRadius = 10
            cell.layer.borderWidth = 0.7
            cell.layer.borderColor = UIColor.lightGray.cgColor
            return cell

        case 3:
            let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell4", for: indexPath) as UICollectionViewCell
            cell.layer.cornerRadius = 10
            cell.layer.borderWidth = 0.7
            cell.layer.borderColor = UIColor.lightGray.cgColor
            return cell

        case 4:
            let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell5", for: indexPath) as UICollectionViewCell
            cell.layer.cornerRadius = 10
            cell.layer.borderWidth = 0.7
            cell.layer.borderColor = UIColor.lightGray.cgColor
            return cell

        case 5:
            let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell6", for: indexPath) as UICollectionViewCell
            cell.layer.cornerRadius = 10
            cell.layer.borderWidth = 0.7
            cell.layer.borderColor = UIColor.lightGray.cgColor
            return cell
            
        default:
            return UICollectionViewCell()
        }
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

