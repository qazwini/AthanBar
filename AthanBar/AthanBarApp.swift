//
//  AthanBarApp.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import SwiftUI

@main
struct AthanBarApp: App {
    @State var currentNumber: String = "1"
    
    var body: some Scene {
        MenuBarExtra("currentNumber", systemImage: "\(currentNumber).circle") {
            AthanView()
        }.menuBarExtraStyle(.window)
    }
}
