//
//  ThemeView.swift
//  scrumdinger
//
//  Created by EDSON SANTOS on 21/05/2024.
//

import SwiftUI

struct ThemeView: View {
    
    let theme: Theme
    
    var body: some View {
        Text(theme.name)
            .padding()
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundStyle(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    ThemeView(theme: .customOrange)
}
