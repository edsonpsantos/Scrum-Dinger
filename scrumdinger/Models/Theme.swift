//
//  Theme.swift
//  scrumdinger
//
//  Created by EDSON SANTOS on 21/05/2024.
//

import SwiftUI

enum Theme: String, CaseIterable, Identifiable, Codable {
    case customBubblegum
    case customButtercup
    case customIndigo
    case customLavender
    case customMagenta
    case customNavy
    case customOrange
    case customOxblood
    case customPeriwinkle
    case customPoppy
    case customPurple
    case customSeafoam
    case customSky
    case customTan
    case customTeal
    case customYellow
    
    var accentColor: Color {
        switch self {
        case .customBubblegum, .customButtercup, .customLavender, .customOrange, .customPeriwinkle, .customPoppy, .customSeafoam, .customSky, .customTan, .customTeal, .customYellow: return .black
        case .customIndigo, .customMagenta, .customNavy, .customOxblood, .customPurple: return .white
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
    
    var name: String {
        switch self {
        case .customBubblegum: return "Bubblegum"
        case .customButtercup: return "Buttercup"
        case .customIndigo: return "Indigo"
        case .customLavender: return "Lavender"
        case .customMagenta: return "Magenta"
        case .customNavy: return "Navy"
        case .customOrange: return "Orange"
        case .customOxblood: return "Oxblood"
        case .customPeriwinkle: return "Periwinkle"
        case .customPoppy: return "Poppy"
        case .customPurple: return "Purple"
        case .customSeafoam: return "Seafoam"
        case .customSky: return "Sky"
        case .customTan: return "Tan"
        case .customTeal: return "Teal"
        case .customYellow: return "Yellow"
        }
    }
   
    var id: String {
        name
    }
    
//    var alias: String {
//            switch self {
//            case .customBubblegum: return "Bubblegum"
//            case .customButtercup: return "Buttercup"
//            case .customIndigo: return "Indigo"
//            case .customLavender: return "Lavender"
//            case .customMagenta: return "Magenta"
//            case .customNavy: return "Navy"
//            case .customOrange: return "Orange"
//            case .customOxblood: return "Oxblood"
//            case .customPeriwinkle: return "Periwinkle"
//            case .customPoppy: return "Poppy"
//            case .customPurple: return "Purple"
//            case .customSeafoam: return "Seafoam"
//            case .customSky: return "Sky"
//            case .customTan: return "Tan"
//            case .customTeal: return "Teal"
//            case .customYellow: return "Yellow"
//            }
//        }
}
