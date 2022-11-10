//
//  AthanView.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/9/22.
//

import SwiftUI

struct AthanView: View {
    @EnvironmentObject var viewModel: AthanViewModel
    @State var authorized: Bool = true
    
    var body: some View {
        VStack {
            if authorized {
                VStack {
                    AthanHeader()
                        .padding(.bottom, 15)
                    
                    VStack {
                        ForEach(viewModel.entries, id: \.id) { entry in
                            AthanCell(entry: entry)
                                .padding(.bottom, entry.prayer == .midnight ? 0 : 8)
                        }
                    }
                    
                }.padding(15)
            } else {
                Text("Location not set")
            }
            
            Divider()
            
            AthanBottom()
        }
//        .onAppear {
//            do {
//                try viewModel.locationProvider.start()
//                authorized = viewModel.locationProvider.authorizationStatus == .authorized
//            } catch {
//                print("No location access.")
//                viewModel.locationProvider.requestAuthorization()
//            }
//        }
    }
}

struct AthanView_Previews: PreviewProvider {
    static var previews: some View {
        AthanView()
            .environmentObject(AthanViewModel())
    }
}
