//
//  AthanCell.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import SwiftUI
import Athan

struct AthanCell: View {
    let entry: PrayerTime?
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(systemName: entry?.prayer.icon ?? "sun.max.fill")
                .font(.title3)
                .frame(width: 25)
            
            Text(entry?.prayer.name ?? "Error")
                .font(.system(size: 16, weight: .semibold))
            
            Spacer()
            
            Text(entry?.timeString ?? "--:--")
                .font(.system(size: 14, weight: .semibold))
        }
    }
}
