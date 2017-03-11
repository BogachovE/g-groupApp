//
//  LeftViewController.swift
//  g-groupApp
//
//  Created by ASda Bogasd on 09.03.17.
//  Copyright © 2017 G-group. All rights reserved.
//

import UIKit
import Material

class LeftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

    extension LeftViewController {
        @objc
        fileprivate func handleTransitionButton() {
            // Transition the entire NavigationDrawer rootViewController.
            //        navigationDrawerController?.transition(to: TransitionedViewController(), completion: closeNavigationDrawer)
            
            // Transition the ToolbarController rootViewController that is in the NavigationDrawer rootViewController.
            (navigationDrawerController?.rootViewController as? ToolbarController)?.transition(to: MainController(), completion: closeNavigationDrawer)
        }
        
        fileprivate func closeNavigationDrawer(result: Bool) {
            navigationDrawerController?.closeLeftView()
        }
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


