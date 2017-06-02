//
//  ParentViewController.swift
//  UISegmentedControlAsTabbarDemo
//
//  Created by Mohammad Zulqurnain on 9/15/15.
//  Copyright © 2015 Mohammad Zulqurnain. All rights reserved.
//
import UIKit

class ParentViewController: UIViewController {

    
    enum TabIndex : Int {
        case firstChildTab = 0
        case secondChildTab = 1
        case thirdChildTab = 2
    }

    @IBOutlet weak var segmentedControl: TabySegmentedControl!
    @IBOutlet weak var contentView: UIView!
    
    var currentViewController: UIViewController?
    lazy var firstChildTabVC: UIViewController? = {
        let firstChildTabVC = self.storyboard?.instantiateViewController(withIdentifier: "VideoTabViewController")
        return firstChildTabVC
    }()
    lazy var secondChildTabVC : UIViewController? = {
        let secondChildTabVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewControllerId")
        
        return secondChildTabVC
    }()

    

    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //segmentedControl.initUI()
        segmentedControl.selectedSegmentIndex = TabIndex.firstChildTab.rawValue
        displayCurrentTab(TabIndex.firstChildTab.rawValue)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let currentViewController = currentViewController {
            currentViewController.viewWillDisappear(animated)
        }
    }
    
    // MARK: - Switching Tabs Functions
    @IBAction func switchTabs(_ sender: UISegmentedControl) {
        self.currentViewController!.view.removeFromSuperview()
        self.currentViewController!.removeFromParentViewController()
        
        displayCurrentTab(sender.selectedSegmentIndex)
    }
    
    func displayCurrentTab(_ tabIndex: Int){
        if let vc = viewControllerForSelectedSegmentIndex(tabIndex) {
            
            self.addChildViewController(vc)
            vc.didMove(toParentViewController: self)
            
            vc.view.frame = self.contentView.bounds
            self.contentView.addSubview(vc.view)
            self.currentViewController = vc
        }
    }
    
    func viewControllerForSelectedSegmentIndex(_ index: Int) -> UIViewController? {
        var vc: UIViewController?
        switch index {
        case TabIndex.firstChildTab.rawValue :
            vc = secondChildTabVC
        case TabIndex.secondChildTab.rawValue :
            vc = firstChildTabVC
//            let videoTabViewController = vc as? VideoTabViewController
//            videoTabViewController?.viewSelectionChoice = 1
        case TabIndex.thirdChildTab.rawValue :
            vc = firstChildTabVC
//            let videoTabViewController = vc as? VideoTabViewController
//            videoTabViewController?.viewSelectionChoice = 2
        default:
        return nil
        }
    
        return vc
    }
}
