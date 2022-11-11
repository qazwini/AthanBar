//
//  AthanBarApp.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import SwiftUI

@main
struct AthanBarApp: App {
    @StateObject private var viewModel = AthanViewModel()
    @AppStorage("styleSelection") private var styleSelection = 0
    
    var body: some Scene {
        MenuBarExtra {
            AthanView()
                .frame(width: 240)
                .environmentObject(viewModel)
        } label: {
            HStack(alignment: .center) {
                if let entry = viewModel.upcomingEntry {
                    if styleSelection == 0 {
                        Image(systemName: entry.prayer.icon)
                        Text(entry.timeString)
                    } else {
                        Text(entry.prayer.name + " " + entry.timeString)
                    }
                } else {
                    Image(systemName: "xmark.octagon")
                    Text("--:--")
                }
            }
        }.menuBarExtraStyle(.window)
        
        Settings {
            SettingsView()
                .environmentObject(viewModel)
        }
    }
}
