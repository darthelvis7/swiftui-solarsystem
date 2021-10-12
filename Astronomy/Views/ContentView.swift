//
//  ContentView.swift
//  Astronomy
//
//  Created by Elvis Cuevas on 9/30/21.
//

import SwiftUI

struct ContentView: View {
        var body: some View {
        NavigationView {
            ZStack {
                Image("cosmicbackground")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
        VStack {
            
            Text("Explore the Solar System")
                .font(.system(size:32))
                .fontWeight(.bold)
            Spacer()
            
            NavigationLink(
                destination: CategoryView(),
                label: {
            Text("Explore")
                .font(.system(.largeTitle, design: .rounded))
                .foregroundColor(Color.white)
                .padding(20.0)
                .background(Color.purple)
                .cornerRadius(16)
                })
        }
        .padding(.bottom, 35.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
