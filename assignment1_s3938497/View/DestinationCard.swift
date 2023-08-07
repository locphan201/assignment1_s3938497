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
                MapView(id: destination.id)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 275)
                HStack {
                    CircleImage(image: destination.image)
                        .offset(y: -80)
                        .padding(.bottom, -80)
                    Text(destination.name)
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                    Spacer()
                }
                
                Divider()
                    .frame(width:300, height: 1)
                    .padding(.horizontal, 10)
                    .background(.blue)
                    .opacity(0.75)
                
                HStack {
                    Text("Activity: ")
                        .bold()
                    Text(destination.typeActivity)
                        .font(.system(size: 16))
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
                
                HStack {
                    Text("Address: ")
                        .bold()
                    Text(destination.address)
                        .font(.system(size: 16))
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
                
                Divider()
                    .frame(width:300, height: 1)
                    .padding(.horizontal, 10)
                    .background(.blue)
                    .opacity(0.75)

                Text(destination.description)
                    .padding()
                    .lineSpacing(10)
                
                HStack {
                    Spacer()
                    Text("- Wikipedia")
                        .bold()
                        .padding(.horizontal, 30)
                }
            }
        }
    }
}

struct DestinationCard_Previews: PreviewProvider {
    static var previews: some View {
        DestinationCard(destination: destinations[0])
    }
}
