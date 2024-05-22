//
//  AVPlayer+Ding.swift
//  scrumdinger
//
//  Created by EDSON SANTOS on 22/05/2024.
//

import SwiftUI
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else {fatalError("Failed to find Ding sound file.")}
        
        return AVPlayer(url: url)
    }()
}
