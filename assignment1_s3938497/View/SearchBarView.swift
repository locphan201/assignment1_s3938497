/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Phan Vinh Loc
  ID: 3938497
  Created  date: 02/08/2023
  Last modified: 07/08/2023
  Acknowledgement: https://www.hackingwithswift.com/quick-start/swiftui/how-to-add-a-search-bar-to-filter-your-data
*/

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
