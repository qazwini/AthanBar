//
//  AthanView.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import SwiftUI

struct AthanView: View {
    @StateObject private var viewModel = AthanViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Text(viewModel.hijriDate)
                    .bold()
                
                Spacer()
            }
            
            
        }.padding(15)
    }
}

struct AthanView_Previews: PreviewProvider {
    static var previews: some View {
        AthanView()
    }
}
