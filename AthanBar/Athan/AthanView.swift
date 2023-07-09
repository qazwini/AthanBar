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
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            VStack {
                AthanHeader()
                    .padding(.bottom, 15)
                
                AthanListView()
            }.padding(15)
            
            Divider()
            
            AthanBottom()
        }
    }
}

struct AthanView_Previews: PreviewProvider {
    static var previews: some View {
        AthanView()
            .environmentObject(AthanViewModel())
    }
}
