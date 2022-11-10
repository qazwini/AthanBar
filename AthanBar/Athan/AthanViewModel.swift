//
//  AthanViewModel.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import SwiftUI

class AthanViewModel: ObservableObject {
    @ObservedObject var locationProvider = LocationProvider()
    @Published var authorized = false
    @Published var adjustedDate: Date = Date()
    @Published var hijriDate: String = ""
    @Published var entries: [PrayerEntry] = []
    @Published var upcomingEntry: PrayerEntry = PrayerEntry(prayer: .duhr, date: Date())
    
    var adjustment: Int = 0 {
        didSet { update() }
    }
    
    func updateLocation() {
        do {
            try locationProvider.start()
            authorized = locationProvider.authorizationStatus == .authorized
            if let lat = locationProvider.location?.coordinate.latitude,
               let lng = locationProvider.location?.coordinate.longitude {
                prayerTimes.coordinate = Coordinate(lat: lat, lng: lng)
            }
        } catch {
            print("No location access.")
            locationProvider.requestAuthorization()
        }
    }
    
    private var prayerTimes: PrayerTimes = PrayerTimes(coord: Coordinate(lat: 0, lng: 0))
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
        // Date
        date = Date()
        adjustedDate = date.adjusting(days: adjustment)
        hijriDate = Hijri.dateString(forDate: adjustedDate)
        
        // Prayer times
        upcomingEntry = prayerTimes.getNextPrayerEntry(forDate: adjustedDate)
        entries = prayerTimes.getPrayerEntries(forDate: adjustedDate)
        print(entries)
    }
}
