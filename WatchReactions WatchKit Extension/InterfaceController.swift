//
//  InterfaceController.swift
//  WatchReactions WatchKit Extension
//
//  Created by Abuzar Amin on 04/05/2021.
//  Copyright © 2021 Abuzar Amin. All rights reserved.
//

import WatchKit
import AVFoundation


class InterfaceController: WKInterfaceController, SoundPlaying {

    var audioPlayer : AVAudioPlayer?
   
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func playSound1() {
        playSound(named: "Hello")
    }
    
    @IBAction func playSound2() {
         playSound(named: "Chew Cucumber")
    }
    
    @IBAction func playSound3() {
         playSound(named: "Laugh")
    }
    
    @IBAction func playSound4() {
         playSound(named: "Happy")
    }
    
}
