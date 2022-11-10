//
//  Hijri.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import Foundation

class Hijri {
    static let calendar = Calendar(identifier: .islamicCivil)
    
    enum Months: CaseIterable {
        case muharram, safar, rabiOne, rabiTwo, jumadiOne, jumadiTwo, rajab, shaban, ramadan, shawwal, thulqida, thulhijjah
        
        var name: String {
            switch self {
            case .muharram:   return "Muharram"
            case .safar:      return "Safar"
            case .rabiOne:    return "Rabi' I"
            case .rabiTwo:    return "Rabi' II"
            case .jumadiOne:  return "Jumadi I"
            case .jumadiTwo:  return "Jumadi II"
            case .rajab:      return "Rajab"
            case .shaban:     return "Shaban"
            case .ramadan:    return "Ramadan"
            case .shawwal:    return "Shawwal"
            case .thulqida:   return "Thul-Qida"
            case .thulhijjah: return "Thul-Hijjah"
            }
        }
    }
    
    static func dateString(forDate date: Date) -> String {
        let df = DateFormatter()
        df.calendar = calendar
        df.monthSymbols = Months.allCases.map(\.name)
        df.dateFormat = "MMMM d, yyyy"
        return df.string(from: date)
    }
}
