//
//  AthanMenuBarView.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 7/9/23.
//

import SwiftUI

struct AthanMenuBarView: View {
    @EnvironmentObject var viewModel: AthanViewModel
    
    var body: some View {
        Label(viewModel.upcomingEntry?.timeString ?? "--:--", systemImage: viewModel.upcomingEntry?.prayer.icon ?? "xmark.octagon")
            .labelStyle(.titleAndIcon)
    }
}

struct AthanMenuBarView_Previews: PreviewProvider {
    static var previews: some View {
        AthanMenuBarView()
    }
}
