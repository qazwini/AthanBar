//
//  AboutView.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/10/22.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image("appIcon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("AthanBar")
                    .font(.title)
                
                Text("Version \(Bundle.main.appVersion)")
                
                Button {
                    if let url = URL(string: AppData.websiteLink) {
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

