//
//  MenuViewController.swift
//  g-groupApp
//
//  Created by ASda Bogasd on 07.03.17.
//  Copyright © 2017 G-group. All rights reserved.
//

import UIKit
import MaterialKit

class MenuViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDataSource, UITableViewDelegate {

    //filterCell
    @IBOutlet weak var filterCollectionView: UICollectionView!
    @IBOutlet weak var foodTable: UITableView!
    
    var filterArray: [String] = ["Все",
                                 "Хачапури",
                                 "Хинкали",
                                 "Закуски",
                                 "Салаты",
                                 "Грузинские блюда",
                                 "Супы",
                                 "Блюда на мангале",
                                 "Гарниры",
                                 "Десерты",
                                 "Соусы"
                                ]
    var underlinedLabelIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        filterCollectionView.delegate = self
        filterCollectionView.dataSource = self
        foodTable.delegate = self
        foodTable.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func underlined(label: MKLabel){
        let borderBottom = CALayer()
        let borderWidth = CGFloat(2.0)
        
        borderBottom.borderColor = UIColor(red:0.99, green:0.79, blue:0.02, alpha:1.0).cgColor
        borderBottom.frame = CGRect(x: 0, y: label.frame.height - 1.0, width: label.frame.width , height: label.frame.height - 1.0)
        borderBottom.borderWidth = borderWidth
        
        label.layer.addSublayer(borderBottom)
        label.layer.masksToBounds = true
            }
    
    func deunderlined(label: MKLabel){
        label.layer.sublayers?.removeAll()
    }


    //FilterColectionView
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return filterArray.count
    }
    
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filterCell", for: indexPath) as! MenuFilterCollectionViewCell
        cell.filterLabel.text = filterArray[indexPath.row]
        cell.backgroundColor = UIColor.white
        if(indexPath.row == 0){
        underlined(label: cell.filterLabel)
        }
     
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        underlined(label: (collectionView.cellForItem(at: indexPath) as! MenuFilterCollectionViewCell).filterLabel)
        deunderlined(label: (collectionView.cellForItem(at: IndexPath(row: underlinedLabelIndex, section: 0)) as! MenuFilterCollectionViewCell).filterLabel)
        underlinedLabelIndex = indexPath.row
    }
    
    //TableView
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodTableCell", for: indexPath) as! FoodTableViewCell
        
        return cell
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
}
