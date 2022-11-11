//
//  AthanViewModel.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import SwiftUI
import Athan

class AthanViewModel: ObservableObject {
    @ObservedObject var locationProvider = LocationProvider()
    @Published var authorized = false
    @Published var adjustedDate: Date = Date()
    @Published var hijriDate: String = "Updating..."
    @Published var entries: [PrayerTime?]? = nil
    @Published var upcomingEntry: PrayerTime? = nil
    
    var adjustment: Int = 0 {
        didSet { update() }
    }
    
    func updateLocation() {
        do {
            try locationProvider.start()
            authorized = locationProvider.authorizationStatus == .authorized
        } catch {
            print("No location access.")
            locationProvider.requestAuthorization()
        }
    }
    
    private var prayerTimes: PrayerTimes?
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
        if let lat = locationProvider.location?.coordinate.latitude,
           let lng = locationProvider.location?.coordinate.longitude {
            prayerTimes = PrayerTimes(
                prayers: Prayer.allDefaultCases,
                coordinates: Coordinates(latitude: lat, longitude: lng),
                date: adjustedDate,
                calculationParameters: CalculationMethod.jafari.params
            )
            
            upcomingEntry = prayerTimes?.nextPrayer()
            entries = prayerTimes?.prayerTimes()
        }
    }
}
