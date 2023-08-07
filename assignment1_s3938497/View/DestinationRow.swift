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
