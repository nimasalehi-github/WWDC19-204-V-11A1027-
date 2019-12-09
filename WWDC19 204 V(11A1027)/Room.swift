//
//  RoomSwiftFile.swift
//  WWDC19 204 V(11A1027)
//
//  Created by nimasalehi on 12/9/19.
//  Copyright © 2019 Par-Negar Ryan-Mehr. All rights reserved.
//

import Foundation

import SwiftUI

struct Room: Identifiable {
    var id = UUID()
    var name: String
    var capacity: Int
    var hasVideo: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb"}
}

#if DEBUG
let testData = [
    Room(name: "Ivorypress", capacity: 13 , hasVideo: true),
    Room(name: "Apple-Champs-Élysées", capacity: 13 , hasVideo: false),
    Room(name: "Chesa-Futura", capacity: 14 , hasVideo: true),
    Room(name: "Comcast-Technology-Center", capacity: 16 , hasVideo: false),
    Room(name: "Apple Marunouchi", capacity: 18 , hasVideo: true),
    Room(name: "Apple-Piazza-Liberty", capacity: 19 , hasVideo: true)
]
#endif
