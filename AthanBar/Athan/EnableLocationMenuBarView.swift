//
//  EnableLocationMenuBarView.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 7/9/23.
//

import SwiftUI

struct EnableLocationMenuBarView: View {
    var body: some View {
        Label("--:--", systemImage: "xmark.octagon")
            .labelStyle(.titleAndIcon)
    }
}

struct EnableLocationMenuBarView_Previews: PreviewProvider {
    static var previews: some View {
        EnableLocationMenuBarView()
    }
}
