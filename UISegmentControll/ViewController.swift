//
//  ViewController.swift
//  UISegmentControll
//
//  Created by Citizen on 04.09.2018.
//  Copyright © 2018 Citizen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var segmentControl = UISegmentedControl()
    var menuArray = ["egs", "tost", "pancake"]
    var imgArr = [UIImage(named: "egs.jpg"),
                  UIImage(named: "tost.png"),
                  UIImage(named: "pancake.jpg")]
    var imgView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imgView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.imgView.center = self.view.center
        self.imgView.image = self.imgArr[0]
        self.view.addSubview(self.imgView)
        
        self.segmentControl = UISegmentedControl(items: menuArray)
        self.segmentControl.frame = CGRect(x: 100, y: 500, width: 200, height: 30)
        self.view.addSubview(self.segmentControl)
        
        segmentControl.addTarget(self, action: #selector(selectedValue(target:)), for: .valueChanged)
    }
    
    @objc func selectedValue(target: UISegmentedControl) {
        imgView.image = imgArr[target.selectedSegmentIndex]
    }

}

