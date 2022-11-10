//
//  AthanCell.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import SwiftUI

struct AthanCell: View {
    let entry: PrayerEntry
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(systemName: entry.prayer.icon)
                .font(.title3)
                .frame(width: 25)
            
            Text(entry.prayer.name)
                .font(.system(size: 16, weight: .semibold))
            
            Spacer()
            
            Text(entry.timeString)
                .font(.system(size: 14, weight: .semibold))
        }
    }
}
