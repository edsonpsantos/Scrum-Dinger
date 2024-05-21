//
//  MeetingHeaderView.swift
//  scrumdinger
//
//  Created by EDSON SANTOS on 21/05/2024.
//

import SwiftUI

struct MeetingHeaderView: View {
    
    let secondsElapsed: Int
    let secondsRemaining: Int
    let theme: Theme
    
    private var totalSeconds: Int{
        secondsElapsed + secondsRemaining
    }
    
    private var progress: Double {
        guard totalSeconds > 0 else {return 1}
        let calculatedProgress = Double(secondsElapsed) / Double(totalSeconds)
        let clampedProgress = min(max(calculatedProgress, 0), 1)
        return clampedProgress
    }

    private var minutesRemaining: Int{
        secondsRemaining / 60
    }
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
                .progressViewStyle(ScrumProgressViewStyle(theme: theme))
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("\(secondsElapsed)", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("\(secondsRemaining)", systemImage: "hourglass.bottomhalf.fill")
                        .labelStyle(.trailingIcon)
                }
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Time remaining")
        .accessibilityValue("\(minutesRemaining) minutes")
        .padding([.top, .horizontal])
    }
}

#Preview {
    MeetingHeaderView(secondsElapsed: 60, secondsRemaining: 180, theme: .customBubblegum)
        .previewLayout(.sizeThatFits)
}
