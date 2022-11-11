//
//  PrayerTimesView.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/11/22.
//

import SwiftUI

struct PrayerTimesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: "circle")
                .font(.title)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("AthanBar")
                    .font(.title)
                
                Text("Version \(Bundle.main.appVersion)")
                
                Button {
                    if let url = URL(string: websiteLink) {
                        NSWorkspace.shared.open(url)
                    }
                } label: {
                    Text("mqazwini.com")
                }.buttonStyle(.link)

                Text("Copyright © 2022 Mahdi Qazwini")
            }
        }
    }
}
