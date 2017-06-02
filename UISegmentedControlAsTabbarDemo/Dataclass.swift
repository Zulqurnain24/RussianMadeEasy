//
//  Dataclass.swift
//  RussianMadeEasy
//
//  Created by Zulqurnain on 5/31/17.
//  Copyright © 2017 A. Abdurrahman. All rights reserved.
//

import Foundation

struct videoData{

    var title:String
    var videoLink : String
    var isSelected : Bool
    
    init(   title:String, videoLink:String,isSelected:Bool)
    {
         self.title = title
         self.videoLink = videoLink
         self.isSelected  = isSelected
    }
}

// MARK: - Singleton

final class Dataclass {
    
    // Can't init is singleton
    private init() { }
    
    // MARK: Shared Instance
    
    static let sharedData = Dataclass()
    
    // MARK: Local Variable

    var dataForVideoArray: Array = [ videoData(title: "lesson 1", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-1.mp4", isSelected: true), videoData(title: "lesson 2", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-2.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-3.mp4", isSelected: true), videoData(title: "lesson 4", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-3.mp4", isSelected: true), videoData(title: "lesson 5", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-4.mp4", isSelected: true), videoData(title: "lesson 6", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-5.mp4", isSelected: true), videoData(title: "lesson 7", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-6.mp4", isSelected: true), videoData(title: "lesson 8", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-7.mp4", isSelected: true), videoData(title: "lesson 9", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-8.mp4", isSelected: true), videoData(title: "lesson 10", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-9.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-10.mp4", isSelected: true), videoData(title: "lesson 11", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-11.mp4", isSelected: true), videoData(title: "lesson 12", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-12.mp4", isSelected: true), videoData(title: "lesson 13", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-13.mp4", isSelected: true), videoData(title: "lesson 14", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-14.mp4", isSelected: true), videoData(title: "lesson 15", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-15.mp4", isSelected: true), videoData(title: "lesson 16", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-16.mp4", isSelected: true), videoData(title: "lesson 17", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-17.mp4", isSelected: true), videoData(title: "lesson 18", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-18.mp4", isSelected: true), videoData(title: "lesson 19", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-19.mp4", isSelected: true), videoData(title: "lesson 20", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-20.mp4", isSelected: true), videoData(title: "lesson 21", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-21.mp4", isSelected: true), videoData(title: "lesson 22", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-22.mp4", isSelected: true), videoData(title: "lesson 23", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-23.mp4", isSelected: true), videoData(title: "lesson 24", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-24.mp4", isSelected: true)]
    
    var dataForExtraArray: Array = [ videoData(title: "lesson 1", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-1.mp4", isSelected: true), videoData(title: "lesson 2", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-2.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-3.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-3.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-4.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-5.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-6.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-7.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-8.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-9.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-10.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-11.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-12.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-13.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-14.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-15.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-16.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-17.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-18.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-19.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-20.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-21.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-22.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-23.mp4", isSelected: true), videoData(title: "lesson 3", videoLink: "http://rme-audios-for-apps.s3.amazonaws.com/RME-24.mp4", isSelected: true)]

    
    func unselectAllVideoElements(){

        for var item in dataForVideoArray{
            
            item.isSelected = false
            
        }
        
    }
    
    func unselectAllExtraElements(){
        
        for var item in dataForExtraArray{
            
            item.isSelected = false
            
        }
        
    }
    
}
