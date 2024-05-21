//
//  ScrumProgressViewStyle.swift
//  scrumdinger
//
//  Created by EDSON SANTOS on 21/05/2024.
//

import SwiftUI

struct ScrumProgressViewStyle: ProgressViewStyle {
    
    var theme: Theme
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(theme.accentColor)
                .frame(height: 20)
            if #available(iOS 15.0, *){
                ProgressView(configuration)
                    .tint(theme.mainColor)
                    .frame(height: 12)
                    .padding(.horizontal)
            } else {
                ProgressView(configuration)
                    .frame(height: 12)
                    .padding(.horizontal)
            }
        }
    }
 
}

#Preview {
    ProgressView(value: 0.4)
        .progressViewStyle(
            ScrumProgressViewStyle(theme: .customButtercup))
        .previewLayout(.sizeThatFits)
}
