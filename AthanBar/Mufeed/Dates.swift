//
//  Dates.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import Foundation

extension Date {
    func adjusting(days: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: days, to: self)!
    }
    
    var dayAfter: Date {
        return adjusting(days: 1)
    }
    
    var dayBefore: Date {
        return adjusting(days: -1)
    }
}
