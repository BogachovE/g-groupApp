//
//  ViewController.swift
//  g-groupApp
//
//  Created by ASda Bogasd on 27.02.17.
//  Copyright © 2017 G-group. All rights reserved.
//

import UIKit
import Material


class MainController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var slideShow: UIButton!
    @IBOutlet weak var topBar: UIView!
    @IBOutlet weak var eventCollectionView: UICollectionView!
    
    var photoArray: [UIImage] = []

   open override func viewDidLoad() {
        super.viewDidLoad()
        eventCollectionView.delegate = self
    
    photoArray = [#imageLiteral(resourceName: "al_mezze_colection"),
    #imageLiteral(resourceName: "kinza_colection"),
    #imageLiteral(resourceName: "goriachie_perci_govorova"),
    #imageLiteral(resourceName: "goriachie_perci_chernomorsk"),
    #imageLiteral(resourceName: "goriachie_perci_koroleva"),
    #imageLiteral(resourceName: "gnezdo"),
    #imageLiteral(resourceName: "eleven_dogs"),
    #imageLiteral(resourceName: "zenith")]
    print(photoArray.count)
    
          }
   
    
    //collection view
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MainCollectionViewCell
        print(indexPath.row)
        cell.eventImage.imageView?.image = photoArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
       
    }
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Actions
    @IBAction func slideButtonPressed(_ sender: Any) {
   
    navigationDrawerController?.toggleLeftView()
    }
    


}

