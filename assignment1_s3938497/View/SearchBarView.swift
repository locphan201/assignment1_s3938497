//
//  SearchBarView.swift
//  assignment1_s3938497
//
//  Created by Loc Phan Vinh on 07/08/2023.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .overlay (
                    HStack {
                        Spacer()
                        Button(action: {
                            text = ""
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .opacity(text.isEmpty ? 0 : 1)
                        }
                        .padding(.horizontal, 10)
                    }
                )
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(text: .constant("hello"))
    }
}
