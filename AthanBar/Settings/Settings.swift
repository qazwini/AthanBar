//
//  Settings.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/11/22.
//

import Foundation
import Athan
import Preferences

extension Settings.PaneIdentifier {
    static let preferences = Self("preferences")
    static let about = Self("about")
}

enum AthanBarStyle {
    case icon
    case text
    case none
}

extension CalculationMethod {
    static let allShiaCases: [CalculationMethod] = [.jafari, .tehran]
    static let allMixedCases: [CalculationMethod] = [.jafari, .tehran, .muslimWorldLeague, .egyptian, .karachi, .ummAlQura, .dubai, .moonsightingCommittee, .northAmerica, .kuwait, .qatar, .singapore, .turkey]
}
