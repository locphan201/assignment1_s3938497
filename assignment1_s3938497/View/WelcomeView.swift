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
                gradient: Gradient(colors: [.white, .white, .blue, .gray]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("My Travel Pocket")
                    .font(.system(size: 40))
                    .bold()
                    .padding(.top, 20)
                HStack {
                    Text("Welcome!")
                        .font(.system(size: 40))
                        .bold()
                        .offset(y: 10)
                    Image("app-logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                    Spacer()
                }
                .padding(.top, 35)
                .padding(.horizontal, 30)
                
                Text("Nice to see you again")
                    .font(.system(size: 30))
                    .offset(x: -28, y: -20)
                
                Spacer()
                Image("rmit-logo-black")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 175)
                
                Text("HCMC: Unveiling Hidden Gems!")
                    .padding(.top, 75)
                    .font(.system(size: 20))
                    .italic()
                    
                
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
                            Text("Discover")
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
