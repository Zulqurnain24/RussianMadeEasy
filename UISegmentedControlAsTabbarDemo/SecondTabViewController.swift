//
//  SecondTabViewController.swift
//  UISegmentedControlAsTabbarDemo
//
//  Created by Mohammad Zulqurnain on 9/16/15.
//  Copyright © 2015 Mohammad Zulqurnain. All rights reserved.
//
import UIKit

class SecondTabViewController: UIViewController {
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Second VC will appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Second VC will disappear")
    }
}
