//
//  ContentView.swift
//  MeowstronautWelcomePage
//
//  Created by Haoyang Guo on 9/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            MainPage()
        }
        
    }
}




struct MainPage: View {
    
    @State var showingSheet = false
    
    var body: some View {
        ZStack(alignment: .top) {
            Image("Space2D")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Text("Meowstroaut")
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
                    NavigationLink(destination: LoginView()) {
                        Text("Start")
                            .font(.system(size: 22, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .tracking(3)
                            .shadow(color: .white.opacity(0.7), radius: 4, x:0, y:-10)
                    }
                    
                    
                    NavigationLink(destination: ShopView()) {
                        Text("Shop")
                            .font(.system(size: 22, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .tracking(3)
                            .shadow(color: .white.opacity(0.7), radius: 4, x:0, y:-10)
                    }
                    
                    
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
                    
                    Button(action: {showingSheet.toggle()}) {
                        Text("Credits")
                        //print("Credits tapped")
                    }
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .tracking(3)
                    .shadow(color: .white.opacity(0.7), radius: 4, x:0, y:-10)
                    .sheet(isPresented: $showingSheet,
                           onDismiss: didDismiss){
                        CreditsView()
                    }
                    
                }
                
                
                Button(action: {}) {
                    Image(systemName: "speaker.wave.2")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                        .padding(.trailing, 100)
                        .padding(.bottom, 40)
                }
            }
        }
    }
    func didDismiss() {
        print("Dismissed")
    }
}


struct ShopView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Image("SpaceShopBg")
                .resizable()
                .scaledToFill()
                .frame(height: 1000)
                .ignoresSafeArea(edges: .all)
            
            Image("SpaceShop")
                .resizable()
                .scaledToFit()
                .frame(height: 500)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
        
    }
}

struct CreditsView : View{
    var body: some View {
        ZStack(alignment: .top) {
            Image("Space2D")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(edges: .all)
            
            VStack(spacing: 70) {
                Text("Credits")
                    .font(.system(size: 48, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
                    .shadow(color: .blue, radius: 2)
                    .shadow(color: .white.opacity(0.5), radius: 6, x:0, y:-15)
                    .rotation3DEffect(.degrees(20), axis: (x: 0.2, y: 0.0, z: 0.0))
                    .tracking(4)
                    .padding(.top, 70)
                
                
                Text("Developed by:")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .tracking(3)
                    .shadow(color: .white.opacity(0.7), radius: 4, x:0, y:-10)
                
                Text("Haoyang Guo")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .tracking(3)
                    .shadow(color: .white.opacity(0.7), radius: 4, x:0, y:-10)
                Text("XXX")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .tracking(3)
                    .shadow(color: .white.opacity(0.7), radius: 4, x:0, y:-10)
                Text("XXX")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .tracking(3)
                    .shadow(color: .white.opacity(0.7), radius: 4, x:0, y:-10)
                
            }
            Image("YellowCat")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            
            
        }
    }
}

struct LoginView: View {
    @State private var playerName: String = ""
    var body: some View {
        ZStack {
            //Image("Space2D")
            
            LinearGradient(
                gradient: Gradient(colors: [.purple, .blue]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                TextField("Enter your name", text: $playerName)
                    .padding()
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(12)
                    .shadow(radius: 5)
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                    .multilineTextAlignment(.center)
                    .frame(width: 280)
                
                NavigationLink(destination: GameView()){
                        Text("Start Game")
                            .font(.system(size: 22, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.horizontal, 50)
                            .padding(.vertical, 15)
                            .background(Color.purple)
                            .cornerRadius(12)
                            .shadow(radius: 8)
                }
            }
        }
    }
    
}

struct GameView: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            Text("Developing...")
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
