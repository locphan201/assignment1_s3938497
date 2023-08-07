//
//  DestinationList.swift
//  assignment1_s3938497
//
//  Created by Loc Phan Vinh on 02/08/2023.
//

import SwiftUI

struct DestinationList: View {
    @Binding var isDarkMode: Bool
    @State var searchText = ""
    var filterDestination: [Destination] {
        if searchText.isEmpty {
            return destinations
        } else {
            return destinations.filter {
                $0.name.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack{
                SearchBarView(text: $searchText)
                    .padding(.horizontal)
                
                List (filterDestination) { destination in
                    NavigationLink {
                        DestinationCard(destination: destination)
                    } label: {
                        DestinationRow(destination: destination)
                    }
                    .navigationTitle("Destinations")
                    .navigationBarItems(trailing:
                        Button(action: {
                            isDarkMode = !isDarkMode
                        }) {
                            Label("", systemImage: isDarkMode ? "sun.max" : "moon.fill")
                                .font(.headline)
                        }
                        .padding(.horizontal, 10)
                    )
                }
            }
        }
    }
}


struct DestinationList_Previews: PreviewProvider {
    static var previews: some View {
        DestinationList(isDarkMode: .constant(true))
    }
}
