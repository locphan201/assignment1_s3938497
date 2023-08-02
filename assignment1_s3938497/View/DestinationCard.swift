//
//  DestinationCard.swift
//  assignment1_s3938497
//
//  Created by Loc Phan Vinh on 02/08/2023.
//

import SwiftUI

struct DestinationCard: View {
    let destination: Destination
        
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: destination.locationCoordinate)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 275)
                HStack {
                    CircleImage(image: destination.image)
                        .offset(y: -80)
                        .padding(.bottom, -80)
                    Text(destination.name)
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                    Spacer()
                }
                
                Divider()
                    .frame(width:300, height: 1)
                    .padding(.horizontal, 10)
                    .background(.blue)
                    .opacity(0.75)

                Text(destination.description)
                    .padding()
                    .lineSpacing(10)
                
            }
        }
    }
}

struct DestinationCard_Previews: PreviewProvider {
    static var previews: some View {
        DestinationCard(destination: destinations[0])
    }
}
