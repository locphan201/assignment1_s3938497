//
//  DestinationRow.swift
//  assignment1_s3938497
//
//  Created by Loc Phan Vinh on 02/08/2023.
//

import SwiftUI

struct DestinationRow: View {
    let destination: Destination
    
    var body: some View {
        HStack {
            destination.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(destination.name)
        }
    }
}

struct DestinationRow_Previews: PreviewProvider {
    static var previews: some View {
        DestinationRow(destination: destinations[0])
    }
}
