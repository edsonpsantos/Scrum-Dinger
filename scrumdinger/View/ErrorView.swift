//
//  ErrorView.swift
//  scrumdinger
//
//  Created by EDSON SANTOS on 22/05/2024.
//

import SwiftUI

struct ErrorView: View {
    
    let errorWrapper: ErrorWrapper
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("An error has occurred!")
                    .font(.title)
                    .padding(.bottom)
                
                Text(errorWrapper.error.localizedDescription)
                    .font(.headline)
                
                Text(errorWrapper.guidance)
                    .font(.caption)
                    .padding(.top)
                
                Spacer()
            }
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(16)
            .padding()
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Dismiss"){
                        dismiss()
                    }
                }
            }
        }
    }
}

struct ErrorView_Preview: PreviewProvider {
    
    enum SamplError: Error{
        case errorRequired
    }
    
    static var wrapper: ErrorWrapper {
        ErrorWrapper(error: SamplError.errorRequired, guidance: "You can safely ignore this error")
    }
    
    static var previews: some View {
        ErrorView(errorWrapper: wrapper)
    }
}
