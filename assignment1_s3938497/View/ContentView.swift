//
//  ContentView.swift
//  assignment1_s3938497
//
//  Created by Loc Phan Vinh on 02/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State var isWelcomePage: Bool = true
    
    var body: some View {
        
        if isWelcomePage {
            WelcomeView(isWelcomePage: $isWelcomePage)
        } else {
            DestinationList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
