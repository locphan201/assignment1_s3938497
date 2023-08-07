//
//  Destination.swift
//  assignment1_s3938497
//
//  Created by Loc Phan Vinh on 02/08/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Destination: Identifiable, Codable {
    var id : Int
    var name: String
    var typeActivity: String
    var description: String
    var imageName: String
    var address: String
    var coordinates: Coordinates

    var image: Image {
        Image(imageName)
    }
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}
