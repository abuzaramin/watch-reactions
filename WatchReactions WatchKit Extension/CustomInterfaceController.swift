//
//  CustomInterfaceController.swift
//  WatchReactions WatchKit Extension
//
//  Created by Abuzar Amin on 04/05/2021.
//  Copyright © 2021 Abuzar Amin. All rights reserved.
//

import WatchKit
import AVFoundation


class CustomInterfaceController: WKInterfaceController {

    
    let saveURL = FileManager.default.getDocumentsCirectory().appendingPathComponent("recording.wav")
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

    @IBAction func playTapped() {
        
        guard FileManager.default.fileExists(atPath: saveURL.path) else {return}
        
        try? audioPlayer = AVAudioPlayer(contentsOf: saveURL)
        audioPlayer?.play()
    }
    
    @IBAction func recordTapped() {
        presentAudioRecorderController(withOutputURL: saveURL, preset: .narrowBandSpeech) {
            success , error in
            if success {
                print ("saved Sucessfully")
            }
            else {
                print (error?.localizedDescription ?? "Unknown Error")
            }
        }
    }
}
