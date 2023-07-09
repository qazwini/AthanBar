//
//  EnableLocationView.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 7/9/23.
//

import SwiftUI

struct EnableLocationView: View {
    @EnvironmentObject var viewModel: AthanViewModel
    
    var body: some View {
        Text("Location not set").padding(15)
    }
}

/*
 VStack {
             Image(systemName: "location.fill")
                 .resizable()
                 .frame(width: 60, height: 60)
                 .padding(.bottom, 16)
             Text("Enable location to get prayer times")
                 .font(.headline)
         }
 */
