//
//  ViewController.swift
//  g-groupApp
//
//  Created by ASda Bogasd on 27.02.17.
//  Copyright © 2017 G-group. All rights reserved.
//

import UIKit


class MainController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var slideShow: UIButton!
    @IBOutlet weak var topBar: UIView!
    @IBOutlet weak var eventCollectionView: UICollectionView!

   open override func viewDidLoad() {
        super.viewDidLoad()
        eventCollectionView.delegate = self
        }
   
        
    //collection view
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MainCollectionViewCell
        cell.eventImage.imageView?.image = #imageLiteral(resourceName: "photo_actia_exemple")
                return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
       
    }
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

