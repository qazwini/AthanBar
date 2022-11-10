//
//  AthanBottom.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import SwiftUI

struct OutlineButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? .white : .gray.opacity(0.6))
            .padding(.horizontal, 8)
            .padding(.vertical, 2)
            .background(
                RoundedRectangle(
                    cornerRadius: 8,
                    style: .continuous
                ).stroke(Color.gray.opacity(0.3))
            )
    }
}

struct AthanBottom: View {
    @Environment(\.openWindow) var openWindow
    
    var body: some View {
        HStack {
            Button {
                NSApp.sendAction(Selector(("showSettingsWindow:")), to: nil, from: nil)
            } label: {
                Text("About")
            }.buttonStyle(OutlineButton())
            
            Button {
                NSApp.sendAction(Selector(("showSettingsWindow:")), to: nil, from: nil)
            } label: {
                Text("Settings")
            }.buttonStyle(OutlineButton())
            
            Spacer()
            
            Button {
                NSApplication.shared.terminate(self)
            } label: {
                Text("Quit")
            }.buttonStyle(OutlineButton())
        }.padding([.leading, .trailing, .bottom], 8)
    }
}

