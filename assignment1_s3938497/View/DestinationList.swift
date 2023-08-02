//
//  DestinationList.swift
//  assignment1_s3938497
//
//  Created by Loc Phan Vinh on 02/08/2023.
//

import SwiftUI

struct DestinationList: View {
    var body: some View {
        NavigationView {
            List (destinations) { destination in
                NavigationLink {
                    DestinationCard(destination: destination)
                } label: {
                    DestinationRow(destination: destination)
                }
                .navigationTitle("Destinations")
            }
        }
    }
}

struct DestinationList_Previews: PreviewProvider {
    static var previews: some View {
        DestinationList()
    }
}
