//
//  NewScrumSheet.swift
//  scrumdinger
//
//  Created by EDSON SANTOS on 22/05/2024.
//

import SwiftUI

struct NewScrumSheet: View {
    
    @State private var newScrum = DailyScrum.emptyScrum
    @Binding var isPresentingNewScrumView: Bool
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack{
            DetailEditView(scrum: $newScrum)
                .toolbar{
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Dissmiss"){
                            isPresentingNewScrumView=false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Add"){
                            scrums.append(newScrum)
                            isPresentingNewScrumView = false
                        }
                    }
                }
        }
    }
}

#Preview {
    NewScrumSheet(isPresentingNewScrumView: .constant(true), scrums: .constant(DailyScrum.sampleData))
}
