//
//  VideoviewCell.swift
//  RussianMadeEasy
//
//  Created by Zulqurnain on 5/31/17.
//  Copyright © 2017 A. Abdurrahman. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoviewCell: UITableViewCell {


    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var videoTitle: UILabel!
    var cellSelected = Bool()
    
    let playerController = AVPlayerViewController()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print("cell selected!")
        
        if cellSelected{
            
        print("video played")
        playerController.player?.play()
            
        }else{
            
            print("video paused")
            playerController.player?.pause()
            
        }
        // Configure the view for the selected state
    }

}
