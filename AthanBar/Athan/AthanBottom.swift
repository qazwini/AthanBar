//
//  AthanBottom.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import SwiftUI

struct OutlineButtonBackground: View {
    let isPressed: Bool
    
    var body: some View {
        if isPressed {
            RoundedRectangle(
                cornerRadius: 8,
                style: .continuous
            ).fill(Color.secondary.opacity(0.5))
        } else {
            RoundedRectangle(
                cornerRadius: 8,
                style: .continuous
            ).stroke(Color.secondary.opacity(0.5))
        }
    }
}

struct OutlineButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? .primary : .secondary)
            .padding(.horizontal, 8)
            .padding(.vertical, 2)
            .background(OutlineButtonBackground(isPressed: configuration.isPressed))
    }
}

struct AthanBottom: View {
    @Environment(\.openWindow) var openWindow
    
    var body: some View {
        HStack {
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

