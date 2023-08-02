//
//  Destination.swift
//  assignment1_s3938497
//
//  Created by Loc Phan Vinh on 02/08/2023.
//

import Foundation
import SwiftUI
import CoreLocation

//var destinations = [
//    Destination(name: "Notre-Dame Cathedral", typeActivity: "Sightseeing", description: "Notre-Dame Cathedral Basilica of Saigon is a cathedral located in the downtown of Ho Chi Minh City, Vietnam. Established by French colonists who initially named it the Church of Saigon, the cathedral was constructed between 1863 and 1880. The name Notre-Dame Cathedral has been used since 1959. It has two bell towers, reaching a height of 58 meters (190 feet).", imageName: "notre-dame", coordinates: Coordinates(latitude: 10.779722, longitude: 106.699167)),
//    Destination(name: "Notre-Dame Cathedral", typeActivity: "Sightseeing", description: "Notre-Dame Cathedral Basilica of Saigon is a cathedral located in the downtown of Ho Chi Minh City, Vietnam. Established by French colonists who initially named it the Church of Saigon, the cathedral was constructed between 1863 and 1880. The name Notre-Dame Cathedral has been used since 1959. It has two bell towers, reaching a height of 58 meters (190 feet).", imageName: "notre-dame", coordinates: Coordinates(latitude: 10.779730, longitude: 106.699167))
//]

struct Destination: Identifiable, Codable {
    var id :UUID {
        UUID()
    }
    var name: String
    var typeActivity: String
    var description: String
    var imageName: String
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
