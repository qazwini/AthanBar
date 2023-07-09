//
//  SavedModel.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/11/22.
//

import Combine

class SavedModel: ObservableObject {
    @Saved("firstLaunch") var firstLaunch = true
}
