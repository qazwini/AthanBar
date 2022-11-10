//
//  Coordinate.swift
//  AthanBar
//
//  Created by Mahdi Qazwini on 11/10/22.
//

import Foundation

struct Coordinate: Codable {
    var latitude: Double
    var longitude: Double
    
    init(lat: Double, lng: Double) {
        latitude = lat
        longitude = lng
    }
}
