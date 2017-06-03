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
        
        if viewSelectionChoice == 0{
            
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
        
        var videoDataItem : videoData?
        
        if viewSelectionChoice == 0{
        
        print("viewSelectionChoice == 1")
            
        videoDataItem = Dataclass.sharedData.dataForVideoArray[indexPath.row] as videoData
            
        }else{
            
            videoDataItem = Dataclass.sharedData.dataForExtraArray[indexPath.row] as videoData
            
        }
        
        if let videoDataItemReceived:videoData = videoDataItem{
            
        cell?.videoTitle.text = videoDataItemReceived.title
        
        if viewSelectionChoice == 0 && Dataclass.sharedData.dataForVideoArray.count == (indexPath.row + 1){
        
             cell?.videoTitle.text = "last lesson"
        }
            
        let videoURL = URL(string: videoDataItemReceived.videoLink)

        cell?.webView.delegate = self
        
            if IJReachability.isConnectedToNetwork(){
                
                DispatchQueue.global( priority:.default).async(execute: {
                    //Load something here. Notice this is not main thread and you can't change anything in UI from here.
                    //1. Load web site into my web view
                    let myURL = videoURL
                    let myURLRequest:URLRequest = URLRequest(url: myURL!)

                    DispatchQueue.main.async(execute: {
                        //update UI in main thread once the loading is completed.
                        cell?.webView.loadRequest(myURLRequest)
                        cell?.webView.allowsInlineMediaPlayback = true
                        cell?.webView.backgroundColor = UIColor.darkGray
                        cell?.webView.scrollView.isScrollEnabled = false
                        cell?.webView.scrollView.bounces = false
                        cell?.isSelected = videoDataItemReceived.isSelected
                    });
                    
                })
                
            }else {
                
                let createAccountErrorAlert: UIAlertView = UIAlertView()
                createAccountErrorAlert.delegate = self
                createAccountErrorAlert.title = "Error"
                createAccountErrorAlert.message = "No connection with internet."
                createAccountErrorAlert.addButton(withTitle: "Proceed")
                createAccountErrorAlert.show()
                
            }


        }

        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        var videoDataItem = Dataclass.sharedData.dataForVideoArray[indexPath.row] as videoData
        videoDataItem.isSelected = true
 
    }
    
    @IBAction func goToWebsiteAction(_ sender: Any) {
       
        let url = URL(string: "http://russianmadeeasy.com/")!
        UIApplication.shared.openURL(url)
    }
  
    
}
