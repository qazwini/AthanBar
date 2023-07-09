//
//  AthanListView.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 7/9/23.
//

import SwiftUI

struct AthanListView: View {
    @EnvironmentObject var viewModel: AthanViewModel
    
    var body: some View {
        VStack(spacing: 8) {
            ForEach(viewModel.entries ?? [], id: \.?.prayer.rawValue) { entry in
                AthanCell(entry: entry)
            }
        }
    }
}

