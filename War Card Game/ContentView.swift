//
//  ContentView.swift
//  War Card Game
//
//  Created by Samuel F Ademola on 9/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
           
            // Logo
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                // Cards
                HStack {
                    Spacer()
                    Image ("card5")
                    Spacer()
                    Image ("card7")
                    Spacer()
                    
                }
                
                // Button
                Spacer()
                
                Button("Deal") {
                    print("Deal Cards")
                }
             
                Spacer()
                
                // Playing Stats
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(10)
                        Text("0")
                            .font(.largeTitle)

                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(10)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
