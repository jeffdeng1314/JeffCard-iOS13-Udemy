//
//  ContentView.swift
//  JeffCard
//
//  Created by Jeff Deng on 12/30/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 0.7)
                .ignoresSafeArea(.all)
            
            VStack {
                Image("jeff")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Jeff Deng")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(Font.custom("Pacifico-Regular", size: 40))
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                infoView(text: "+44 123 456 789", imageName: "phone.fill")
                infoView(text: "jeffdeng@gmail.com", imageName: "envelope.fill")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


