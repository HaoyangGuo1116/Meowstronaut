//
//  ContentView.swift
//  MeowstronautWelcomePage
//
//  Created by Haoyang Guo on 9/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Image("SpacePic")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Text("Hello  World!")
                    .font(.system(size: 48, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
                    .shadow(color: .blue, radius: 2)
                    .shadow(color: .white.opacity(0.5), radius: 6, x:0, y:-15)
                    .rotation3DEffect(.degrees(20), axis: (x: 0.2, y: 0.0, z: 0.0))
                    .tracking(4)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    .padding(.top, 70)
                
                Spacer()
                
                VStack(spacing: 70) {
                    Button("Start") {
                        print("Start Game tapped")
                    }
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .tracking(3)
                    .shadow(color: .white.opacity(0.7), radius: 4, x:0, y:-10)
                    
                    Button("Scoreboard") {
                        print("Scoreboard tapped")
                    }
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .tracking(3)
                    .shadow(color: .white.opacity(0.7), radius: 4, x:0, y:-10)
                    
                    Button("Settings") {
                        print("Settings tapped")
                    }
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .tracking(3)
                    .shadow(color: .white.opacity(0.7), radius: 4, x:0, y:-10)
                    
                    Button("Credits") {
                        print("Credits tapped")
                    }
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .tracking(3)
                    .shadow(color: .white.opacity(0.7), radius: 4, x:0, y:-10)
                }
                .padding(.bottom, 150)
                
                }
        
            
        Button(action: {}) {
            Image(systemName: "speaker.wave.2")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                .padding(.trailing, 170)
                .padding(.bottom, 40)
            }
        }
    }
}

#Preview {
    ContentView()
}
