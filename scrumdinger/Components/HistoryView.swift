//
//  HistoryView.swift
//  scrumdinger
//
//  Created by EDSON SANTOS on 22/05/2024.
//

import SwiftUI

struct HistoryView: View {
    
    let history: History
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Divider()
                    .padding(.bottom)
                
                Text("Attendees")
                    .font(.headline)
                
                Text(history.attendeeString)
                
                if let transcript = history.transcript{
                    Text("Transcript: ")
                        .font(.headline)
                        .padding([.top, .bottom])
                        .underline()
                                            
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}

extension History{
    var attendeeString: String {
        ListFormatter.localizedString(byJoining: attendee.map {$0.name})
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var history: History{
        History(attendee: [
            DailyScrum.Attendee(name: "John"),
            DailyScrum.Attendee(name: "Mary"),
            DailyScrum.Attendee(name: "Frank"),
        ], transcript: "Mary, would like to start today? Sure, yesterday I reviewed Frank's pull request and I finalized the History view")
    }
    
    static var previews: some View{
        HistoryView(history: history)
    }
}
