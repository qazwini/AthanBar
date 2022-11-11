//
//  PreferencesView.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/10/22.
//

import SwiftUI
import Preferences

struct PreferencesView: View {
    @EnvironmentObject var viewModel: AthanViewModel
    
    @AppStorage("styleSelection") private var styleSelection = 0
    
    var body: some View {
        Preferences.Container(contentWidth: 450) {
            Preferences.Section(title: "Style") {
                Preferences.Section(title: "") {
                    Picker("", selection: $styleSelection) {
                        Text("Icon").tag(0)
                        Text("Text").tag(1)
                    }
                    .labelsHidden()
                    .frame(width: 120.0)
                }
            }
        }
    }
}

