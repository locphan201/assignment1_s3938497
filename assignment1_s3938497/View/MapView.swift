/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Phan Vinh Loc
  ID: 3938497
  Created  date: 02/08/2023
  Last modified: 07/08/2023
  Acknowledgement: N/A
*/

import SwiftUI
import MapKit

struct MapView: View {
    var id: Int
        
    var desLoc : Destination {
        destinations[id]
    }
    
    @State private var region = MKCoordinateRegion()

    var body: some View {
            Map(coordinateRegion: $region, annotationItems: [desLoc]) { destination in
                MapMarker(coordinate: desLoc.locationCoordinate)
            }
            .onAppear {
                setRegion(desLoc.locationCoordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(id: destinations[0].id)
    }
}
