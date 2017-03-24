//
//  StoreCollectionViewController.swift
//  g-groupApp
//
//  Created by ASda Bogasd on 03.03.17.
//  Copyright © 2017 G-group. All rights reserved.
//

import UIKit



class StoreCollectionViewController: UICollectionViewController {
    @IBOutlet var storeCollectionView: UICollectionView!
    
    var photoArray: [UIImage] = [#imageLiteral(resourceName: "al_mezze_colection"),
                                 #imageLiteral(resourceName: "kinza_colection"),
                                 #imageLiteral(resourceName: "goriachie_perci_govorova"),
                                 #imageLiteral(resourceName: "goriachie_perci_chernomorsk"),
                                 #imageLiteral(resourceName: "goriachie_perci_koroleva"),
                                 #imageLiteral(resourceName: "gnezdo"),
                                 #imageLiteral(resourceName: "eleven_dogs"),
                                 #imageLiteral(resourceName: "zenith")
                                 ]

    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return photoArray.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "storecell", for: indexPath) as! StoreCollectionViewCell
                if (indexPath.section == 0){
            cell.backButton.isHidden = false
        }
        cell.storeImage.setBackgroundImage(photoArray[indexPath.section], for: .normal)
    
        // Configure the cell
    
        return cell
    }

    
}
