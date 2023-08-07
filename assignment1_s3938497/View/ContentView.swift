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

struct ContentView: View {
    @State var isWelcomePage: Bool = true
    @State var isDarkMode = false
    
    var body: some View {
        
        if isWelcomePage {
            WelcomeView(isWelcomePage: $isWelcomePage)
        } else {
            DestinationList(isDarkMode: $isDarkMode)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
