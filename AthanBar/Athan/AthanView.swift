//
//  AthanView.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import SwiftUI
import Athan

struct AthanView: View {
    @EnvironmentObject var viewModel: AthanViewModel
    
    var body: some View {
        VStack {
            if viewModel.authorized {
                VStack {
                    AthanHeader()
                        .padding(.bottom, 15)
                    
                    VStack {
                        ForEach(viewModel.entries ?? [], id: \.?.prayer.rawValue) { entry in
                            AthanCell(entry: entry)
                                .padding(.bottom, entry?.prayer == .midnight ? 0 : 8)
                        }
                    }
                    
                }.padding(15)
            } else {
                Text("Location not set").padding(15)
            }
            
            Divider()
            
            AthanBottom()
        }.onAppear {
            viewModel.updateLocation()
        }
    }
}

struct AthanView_Previews: PreviewProvider {
    static var previews: some View {
        AthanView()
            .environmentObject(AthanViewModel())
    }
}
