//
//  AthanViewModel.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import SwiftUI

class AthanViewModel: ObservableObject {
    @StateObject var locationProvider = LocationProvider()
    @Published var adjustedDate: Date = Date()
    @Published var hijriDate: String = ""
    @Published var entries: [PrayerEntry] = []
    @Published var upcomingEntry: PrayerEntry = PrayerEntry(prayer: .duhr, date: Date())
    
    var adjustment: Int = 0 {
        didSet { update() }
    }
    
    private var date: Date = Date()
    private var timer: Timer?
    
    init() {
        update()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak self] _ in
            self?.update()
        })
    }
    
    deinit {
        timer?.invalidate()
    }
    
    private func update() {
        date = Date()
        adjustedDate = date.adjusting(days: adjustment)
        hijriDate = Hijri.dateString(forDate: adjustedDate)
        upcomingEntry = PrayerEntry.snapshotNext
        entries = PrayerEntry.snapshotDay
    }
}
