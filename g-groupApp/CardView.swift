//
//  Card.swift
//  g-groupApp
//
//  Created by ASda Bogasd on 01.03.17.
//  Copyright © 2017 G-group. All rights reserved.
//

import Foundation

import UIKit

@IBDesignable
class CardView: UICollectionViewCell{
    
    @IBInspectable var cornerRadius: CGFloat = 1
    
    @IBInspectable var shadowOffsetWidth: Int = 2
    @IBInspectable var shadowOffsetHeight: Int = 3
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.2
    
    
    
    @IBOutlet weak var eventImage: UIButton!
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        
        layer.masksToBounds = false
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.cgPath
    }
    
}
