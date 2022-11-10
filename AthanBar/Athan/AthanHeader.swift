//
//  AthanHeader.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import SwiftUI

struct AthanHeader: View {
    @EnvironmentObject var viewModel: AthanViewModel
    
    var body: some View {
        HStack(alignment: .center) {
            Text(viewModel.hijriDate)
                .font(.title2)
                .fontWeight(.semibold)
            
            Spacer()
            
            Button {
                viewModel.adjustment -= 1
            } label: {
                Image(systemName: "chevron.backward.circle")
                    .font(.title3)
            }
            .buttonStyle(.borderless)
            
            Button {
                viewModel.adjustment += 1
            } label: {
                Image(systemName: "chevron.forward.circle")
                    .font(.title3)
            }.buttonStyle(.borderless)
        }
    }
}
