//
//  WelcomeView.swift
//  assignment1_s3938497
//
//  Created by Loc Phan Vinh on 02/08/2023.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var isWelcomePage: Bool
    @State var showingAlert: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue, .white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Button {
                    isWelcomePage = false
                } label: {
                    Capsule()
                        .frame(height: 60)
                        .foregroundColor(.black)
                        .opacity(0.2)
                        .padding(.horizontal, 30)
                        .overlay(
                            Text("Get start")
                                .font(.system(size: 20))
                                .bold()
                                .foregroundColor(.black)
                                .opacity(0.8)
                        )
                }
                HStack {
                    Spacer()
                    Button {
                        showingAlert = true
                    } label: {
                        Label("", systemImage: "info.circle.fill")
                            .foregroundColor(.black)
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("My Travel Pocket"), message: Text("Loc Vinh Phan - S3938497"), dismissButton: .cancel())
                    }
                    .padding()
                }
            }
            
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(isWelcomePage: .constant(true))
    }
}
