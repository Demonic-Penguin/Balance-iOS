//
//  VideoViewController.swift
//  Balance Dashboard
//
//  Created by Demonic Penguin on 5/15/15.
//  Copyright (c) 2015 Legendary Phoenix. All rights reserved.
//

import UIKit
import MediaPlayer


class VideoViewController: UIViewController {
    
    
    var moviePlayer : MPMoviePlayerController?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playVideo()
        
    }
    
    func playVideo() {
        let videoPath = NSBundle.mainBundle().pathForResource("Animation", ofType: "mp4")
        
        let url = NSURL.fileURLWithPath(videoPath!)
        
        moviePlayer = MPMoviePlayerController(contentURL: url)
        
        if let player = moviePlayer {
            
            player.view.frame = self.view.bounds
            
            player.scalingMode = .AspectFit
            
            self.view.addSubview(player.view)
            
            player.controlStyle = MPMovieControlStyle.None
            
            player.play()
            
            goToLogin()
            
            
        } else {
            println("Movie Player Failed")
        }
    }
    
    func goToLogin() {
        let delay = 8 * Double(NSEC_PER_SEC)
        let time =  dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        dispatch_after(time, dispatch_get_main_queue()) {
            let vc = self.storyboard?.instantiateViewControllerWithIdentifier("login") as! LoginViewController
            self.presentViewController(vc, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}