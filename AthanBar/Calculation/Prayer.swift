//
//  Prayer.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import Foundation
import Athan

extension Prayer {
    static let allDefaultCases: [Prayer] = [.fajr, .sunrise, .dhuhr, .maghrib, .midnight]
    
    var name: String {
        switch self {
        case .fajr:          return "Fajr"
        case .sunrise:       return "Sunrise"
        case .dhuhr:         return "Duhr"
        case .asr:           return "Asr"
        case .sunset:        return "Sunset"
        case .maghrib:       return "Maghrib"
        case .isha:          return "Isha'"
        case .midnight:      return "Midnight"
        case .twoThirdNight: return "2/3 Night"
        }
    }
    
    var icon: String {
        switch self {
        case .fajr:          return "light.min"
        case .sunrise:       return "sunrise.fill"
        case .dhuhr:         return "sun.max.fill"
        case .asr:           return "sun.min.fill"
        case .sunset:        return "sunset.fill"
        case .maghrib:       return "sunset.fill"
        case .isha:          return "moon.fill"
        case .midnight:      return "moon.fill"
        case .twoThirdNight: return "moon.stars.fill"
        }
    }
}

extension PrayerTime {
    var timeString: String {
        let df = DateFormatter()
        df.dateStyle = .none
        df.timeStyle = .short
        let prayer = PrayerTimes(prayers: Prayer.allDefaultCases, coordinates: .init(latitude: 0, longitude: 0), date: Date(), calculationParameters: CalculationMethod.jafari.params)
        return df.string(from: date)
    }
    
    static let snapshotNext = PrayerTime(prayer: .maghrib, date: Date(timeIntervalSince1970: Date().timeIntervalSince1970 + 600))
    static let snapshotDay = [
        PrayerTime(prayer: .fajr, date: Date(timeIntervalSince1970: Date().timeIntervalSince1970 - 1200)),
        PrayerTime(prayer: .sunrise, date: Date(timeIntervalSince1970: Date().timeIntervalSince1970 - 600)),
        PrayerTime(prayer: .dhuhr, date: Date(timeIntervalSince1970: Date().timeIntervalSince1970)),
        PrayerTime(prayer: .maghrib, date: Date(timeIntervalSince1970: Date().timeIntervalSince1970 + 600)),
        PrayerTime(prayer: .midnight, date: Date(timeIntervalSince1970: Date().timeIntervalSince1970 + 1200))
    ]
}
