//
//  SettingsView.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        TabView {
            PreferencesView()
                .tabItem {
                    Label("Preferences", systemImage: "gearshape")
                }
            
            AboutView()
                .tabItem {
                    Label("About", systemImage: "person")
                }
        }.frame(width: 450, height: 250)
    }
}
