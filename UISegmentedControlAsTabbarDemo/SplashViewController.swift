//
//  SplashViewController.swift
//  RussianMadeEasy
//
//  Created by Mohammad Zulqurnain on 03/06/2017.
//  Copyright © 2017 A. Abdurrahman. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var splashScreenViewController: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var imgListArray :[UIImage] = []
        
        for countValue in 1..<6
        {
            
            var strImageName : String = "splash\(countValue).jpg"
            var image  = UIImage(named:strImageName)
            imgListArray.append(image!)
        }
        
        self.splashScreenViewController.animationImages = imgListArray
        self.splashScreenViewController.animationDuration = 4.0
        self.splashScreenViewController.startAnimating()
        
        let when = DispatchTime.now() + 4 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: when) {
            // Your code with delay
            self.performSegue(withIdentifier: "segueToMainView", sender: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
