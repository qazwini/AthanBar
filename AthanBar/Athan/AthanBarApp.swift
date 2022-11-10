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
    
    var body: some Scene {
        MenuBarExtra {
            AthanView()
                .frame(width: 240)
                .environmentObject(viewModel)
        } label: {
            HStack(alignment: .center, spacing: 5) {
                Image(systemName: viewModel.upcomingEntry.prayer.icon)
                Text(viewModel.upcomingEntry.timeString)
            }
        }.menuBarExtraStyle(.window)
        
        Settings {
            SettingsView()
                .environmentObject(viewModel)
        }
    }
}
