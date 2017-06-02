//
//  FirstTabViewController.swift
//  UISegmentedControlAsTabbarDemo
//
//  Created by Mohammad Zulqurnain on 9/16/15.
//  Copyright © 2015 Mohammad Zulqurnain. All rights reserved.
//
import UIKit
import AVKit
import AVFoundation

class VideoTabViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIWebViewDelegate{

    @IBOutlet weak var adButton: UIButton!
    
    @IBOutlet weak var tableviewController: UITableView!
    
    var cellIdentifier = "VideoviewCell"
    
    var viewSelectionChoice = Int(0)
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
  
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("First VC will appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("First VC will disappear")
    }
    
    @IBAction func adButtonAction(_ sender: Any) {
    }
    
    //UITableview methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if viewSelectionChoice == 1{
            
            let numberOfRows = Dataclass.sharedData.dataForVideoArray.count
            
            return numberOfRows
        }else{
            
            let numberOfRows = Dataclass.sharedData.dataForExtraArray.count
            
            return numberOfRows
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! VideoviewCell?
        
        if (cell == nil) {
            cell = VideoviewCell(style: UITableViewCellStyle.value1, reuseIdentifier: cellIdentifier)
        }
        
        //if viewSelectionChoice == 1{
        
        print("viewSelectionChoice == 1")
            
        let videoDataItem = Dataclass.sharedData.dataForVideoArray[indexPath.row] as videoData
        
        cell?.videoTitle.text = videoDataItem.title
        
        let videoURL = URL(string: videoDataItem.videoLink)

        cell?.webView.delegate = self
        
        //1. Load web site into my web view
        let myURL = videoURL
        let myURLRequest:URLRequest = URLRequest(url: myURL!)
        cell?.webView.loadRequest(myURLRequest)
        cell?.webView.allowsInlineMediaPlayback = true
        cell?.webView.backgroundColor = UIColor.darkGray
        cell?.webView.scrollView.isScrollEnabled = false
        cell?.webView.scrollView.bounces = false
        cell?.isSelected = videoDataItem.isSelected


        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        var videoDataItem = Dataclass.sharedData.dataForVideoArray[indexPath.row] as videoData
        videoDataItem.isSelected = true
 
    }
    
}
