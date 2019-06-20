//
//  ViewController.swift
//  CheckMateTable
//
//  Created by Harut on 21/01/2019.
//  Copyright © 2019 Harut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for views in makeViews() {
           self.view.addSubview(views)
        }
        
        for label in makeVerticalLabels() {
            self.view.addSubview(label)
        }
        
        for label in makeHorizontalLabels() {
            self.view.addSubview(label)
        }
    }
}

