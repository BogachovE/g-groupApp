//
//  AktivationViewController.swift
//  g-groupApp
//
//  Created by ASda Bogasd on 06.03.17.
//  Copyright © 2017 G-group. All rights reserved.
//

import UIKit
import MaterialKit

class AktivationViewController: UIViewController {

    @IBOutlet weak var editNumber: MKTextField!
    
    var a = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func aktivationPressed(_ sender: Any) {
        
        if (a == 0){
        editNumber.text = ""
        editNumber.attributedPlaceholder = NSAttributedString(string: "ВВЕДИТЕ SMS КОД")
            a = a + 1
        } else {
            performSegue(withIdentifier: "fromActivationToTransaction", sender: self)
        }
        
    }
    
}
