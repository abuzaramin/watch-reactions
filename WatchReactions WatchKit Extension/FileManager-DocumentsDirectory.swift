//
//  FileManager-DocumentsDirectory.swift
//  WatchReactions WatchKit Extension
//
//  Created by Abuzar Amin on 04/05/2021.
//  Copyright © 2021 Abuzar Amin. All rights reserved.
//

import Foundation


extension FileManager {
    func getDocumentsCirectory () -> URL {
        let paths = urls (for: .documentDirectory, in : .userDomainMask)
        return paths[0]
    }
}
