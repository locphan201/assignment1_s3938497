//
//  CircleImage.swift
//  assignment1_s3938497
//
//  Created by Loc Phan Vinh on 02/08/2023.
//

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
