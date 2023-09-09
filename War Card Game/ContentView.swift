//
//  ContentView.swift
//  War Card Game
//
//  Created by Samuel F Ademola on 9/2/23.
//

import SwiftUI

struct ContentView: View {
   
   @State var playerCard = "card5"
   @State var cpuCard = "card7"
    
   @State var playerScore = 0
   @State var cpuScore = 0
    
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
                    Image (playerCard)
                    Spacer()
                    Image (cpuCard)
                    Spacer()
                    
                }
                
                // Button
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

             
                Spacer()
                
                // Playing Stats
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(10)
                        Text(String(playerScore))
                            .font(.largeTitle)

                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    
    }
    
    func deal() {
       // Randomise player cards
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
       // Randomise cpu cards
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
      // Update scores
        if playerCardValue > cpuCardValue {
            playerScore += 1
            
        } else if cpuCardValue > playerCardValue {
            
            cpuScore += 1
            
        } else {
//            cpuCardValue += 0
//            playerScore += 0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
