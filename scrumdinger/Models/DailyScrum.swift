//
//  DailyScrum.swift
//  scrumdinger
//
//  Created by EDSON SANTOS on 21/05/2024.
//

import Foundation

struct DailyScrum: Identifiable, Codable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double{
        get{
            Double(lengthInMinutes)
        }
        set{
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    var history: [History] = []
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map{Attendee(name: $0)}
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable, Codable{
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum: DailyScrum{
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .customSeafoam)
    }
}


extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Johanatan"], lengthInMinutes: 10, theme: .customBubblegum),
        DailyScrum(title: "App Dev", attendees: ["Katia", "Gray", "Euna", "Luis", "Derla"], lengthInMinutes: 5, theme: .customOrange),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Viktor", "Eden", "Kerla", "Augutus", "Chad", "Jenn", "Sharah"], lengthInMinutes: 9, theme: .customPoppy),
    ]
}
