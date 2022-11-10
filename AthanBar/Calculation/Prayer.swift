//
//  Prayer.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import Foundation

enum Prayer: Int, CaseIterable {
    case fajr, sunrise, duhr, asr, sunset, maghrib, isha, midnight
    
    static let allDefaultCases: [Prayer] = [.fajr, .sunrise, .duhr, .maghrib, .midnight]
    
    var name: String {
        switch self {
        case .fajr:     return "Fajr"
        case .sunrise:  return "Sunrise"
        case .duhr:     return "Duhr"
        case .asr:      return "Asr"
        case .sunset:   return "Sunset"
        case .maghrib:  return "Maghrib"
        case .isha:     return "Isha'"
        case .midnight: return "Midnight"
        }
    }
    
    var icon: String {
        switch self {
        case .fajr:     return "light.min"
        case .sunrise:  return "sunrise.fill"
        case .duhr:     return "sun.max.fill"
        case .asr:      return "sun.min.fill"
        case .sunset:   return "sunset.fill"
        case .maghrib:  return "sunset.fill"
        case .isha:     return "moon.fill"
        case .midnight: return "moon.fill"
        }
    }
}

struct PrayerEntry: Identifiable {
    let id = UUID()
    let prayer: Prayer
    let date: Date
    
    var timeString: String {
        let df = DateFormatter()
        df.dateStyle = .none
        df.timeStyle = .short
        return df.string(from: date)
    }
    
    static let snapshotNext = PrayerEntry(prayer: .maghrib, date: Date(timeIntervalSince1970: Date().timeIntervalSince1970 + 600))
    static let snapshotDay = [
        PrayerEntry(prayer: .fajr, date: Date(timeIntervalSince1970: Date().timeIntervalSince1970 - 1200)),
        PrayerEntry(prayer: .sunrise, date: Date(timeIntervalSince1970: Date().timeIntervalSince1970 - 600)),
        PrayerEntry(prayer: .duhr, date: Date(timeIntervalSince1970: Date().timeIntervalSince1970)),
        PrayerEntry(prayer: .maghrib, date: Date(timeIntervalSince1970: Date().timeIntervalSince1970 + 600)),
        PrayerEntry(prayer: .midnight, date: Date(timeIntervalSince1970: Date().timeIntervalSince1970 + 1200))
    ]
}
