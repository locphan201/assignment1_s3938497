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

struct CircleImage: View {
    var image : Image
        
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 100)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color(.blue), lineWidth: 1)
                    .opacity(0.8)
            )
            .shadow(radius: 7)
            
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("notre-dame"))
    }
}
