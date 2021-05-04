//
//  TableInterfaceController.swift
//  WatchReactions WatchKit Extension
//
//  Created by Abuzar Amin on 04/05/2021.
//  Copyright © 2021 Abuzar Amin. All rights reserved.
//

import WatchKit
import AVFoundation


class TableInterfaceController: WKInterfaceController, SoundPlaying {

    @IBOutlet weak var table: WKInterfaceTable!
    var audioPlayer: AVAudioPlayer?
    
    let sounds = Bundle.main.urls(forResourcesWithExtension: "mp3", subdirectory: nil)?.map{ $0.deletingPathExtension().lastPathComponent}.sorted() ?? []
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        table.setNumberOfRows(sounds.count, withRowType: "Row")
        
        for (index, sound) in sounds.enumerated () {
            guard let row = table.rowController(at: index) as? SoundRow else {
                continue
            }
            row.textLabel.setText(sound)
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        playSound(named: sounds[rowIndex])
    }
}