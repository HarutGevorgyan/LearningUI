//
//  TableConstructor.swift
//  CheckMateTable
//
//  Created by Harut on 21/01/2019.
//  Copyright © 2019 Harut. All rights reserved.
//

import Foundation
import UIKit


func makeViews() -> [UIView] {
   
    var viewsArray = [UIView]()
    
    for row in 1...8 {
        for column in 1...8 {
            let rect = CGRect(x: column * 35, y: row * 35, width: 35, height: 35)
            let fieldView = UIView(frame: rect)
            
            if (row % 2 == 0 && column % 2 == 0) || (row % 2 != 0 && column % 2 != 0) {
                fieldView.backgroundColor = UIColor.init(red: 236/255.0, green: 217/255.0, blue: 185/255.0, alpha: 1.0)
            }
            else {
                fieldView.backgroundColor = UIColor.init(red: 174/255.0, green: 138/255.0, blue: 104/255.0, alpha: 1.0)
            }
            viewsArray.append(fieldView)
        }
    }
    return viewsArray
}


func makeVerticalLabels() -> [UILabel] {
    var labelsArray = [UILabel]()
    
    for index in (1...8).reversed() {
        let rect = CGRect(x: 0, y: index * 35, width: 35, height: 35)
        let label = UILabel(frame: rect)
        label.textAlignment = NSTextAlignment.center
        label.textColor = UIColor.black
        label.text = "\(index)"
        labelsArray.append(label)
    }
    return labelsArray
}

func makeHorizontalLabels() -> [UILabel] {
    var labelsArray = [UILabel]()
    let letters = ["a", "b", "c", "d", "e", "f", "g", "h"]
    
    for index in 0...7 {
        let rect = CGRect(x: (index + 1) * 35, y: 310, width: 35, height: 35)
        let label = UILabel(frame: rect)
        label.textAlignment = NSTextAlignment.center
        label.textColor = UIColor.black
        label.text = letters[index]
        labelsArray.append(label)
    }
    
    return labelsArray
}
