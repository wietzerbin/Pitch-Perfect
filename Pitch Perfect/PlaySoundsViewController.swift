//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Nahuel Wietzerbin on 24-04-15.
//  Copyright (c) 2015 Living-Chile. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    var receivedAudio:RecordedAudio!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       if var filepath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
           var filePathUrl = NSURL.fileURLWithPath(filepath)
        }else {
           println("the filePath is empty")
        }

        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, error: nil)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func soundSlowly(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        audioPlayer.rate = 0.5
        audioPlayer.play()
        
        
        
        
    }
    @IBAction func soundFast(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        audioPlayer.rate = 1.5
        audioPlayer.play()
    }

    
    @IBAction func stopAllAudio(sender: UIButton) {
  
    audioPlayer.stop()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
