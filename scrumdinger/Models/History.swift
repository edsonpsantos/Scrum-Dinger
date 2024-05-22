//
//  History.swift
//  scrumdinger
//
//  Created by EDSON SANTOS on 22/05/2024.
//

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    let date: Date
    var attendee: [DailyScrum.Attendee]
    
    init(id: UUID = UUID(), date: Date = Date(), attendee: [DailyScrum.Attendee]) {
        self.id = id
        self.date = date
        self.attendee = attendee
    }
}
