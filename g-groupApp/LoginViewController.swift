//
//  LoginViewController.swift
//  g-groupApp
//
//  Created by ASda Bogasd on 04.03.17.
//  Copyright © 2017 G-group. All rights reserved.
//

import UIKit
import Material
import MaterialKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passEdit: MKTextField!
    @IBOutlet weak var cardEdit: MKTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
//        passEdit.attributedPlaceholder = NSAttributedString(string: "Пароль",
//                                                            attributes: [NSForegroundColorAttributeName: UIColor.black])
//        cardEdit.attributedPlaceholder = NSAttributedString(string: "Номер карты",
//                                                            attributes: [NSForegroundColorAttributeName: UIColor.black]
//                                                            )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
