//
//  scrumdingerApp.swift
//  scrumdinger
//
//  Created by EDSON SANTOS on 21/05/2024.
//

import SwiftUI

@main
struct scrumdingerApp: App {
    
    @StateObject private var store = ScrumStore()
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums){
                Task{
                    do{
                        try await store.save(scrums: store.scrums)
                    }
                    catch{
                        fatalError(error.localizedDescription)
                    }
                }
            }
            .task {
                do{
                    try await store.load()
                }
                catch{
                    fatalError(error.localizedDescription)
                }
            }
        }
    }
}
