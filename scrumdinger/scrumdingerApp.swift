//
//  scrumdingerApp.swift
//  scrumdinger
//
//  Created by EDSON SANTOS on 21/05/2024.
//

import SwiftUI

@main
struct scrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
