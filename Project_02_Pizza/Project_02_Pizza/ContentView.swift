//
//  ContentView.swift
//  Project_02_Pizza
//
//  Created by Ali Osman Öztürk on 10.05.2025.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "mainColor")
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor(named: "textColor1")!,
            .font: UIFont(name: "Pacifico-Regular", size: 22)!
        ]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        
        GeometryReader { geometry in
            let screenHeight = geometry.size.height
            let screenWidth = geometry.size.width
            
            NavigationStack {
                VStack(spacing: screenHeight / 13) {
                    Text("pizzaBaslik")
                        .foregroundStyle(Color("mainColor"))
                        .font(.system(size: screenWidth / 15))
                        .bold()
                    
                    Image("pizzaImage")
                    
                    HStack {
                        Chip(name: "Cheese")
                        Chip(name: "Sausage")
                        Chip(name: "Pepper")
                    }
                    
                    VStack(spacing: 10) {
                        Text("teslimatSure")
                            .foregroundStyle(Color("mainColor")).bold()
                            .font(.system(size: 22))
                        
                        Text("teslimatBaslik")
                            .foregroundStyle(Color("textColor2")).bold()
                            .font(.system(size: 22))
                        
                        Text("pizzaAciklama")
                            .foregroundStyle(Color("textColor2")).bold()
                            .font(.system(size: 22))
                            .padding([.leading, .trailing], 20)
                            .multilineTextAlignment(.center)
                    }
                    
                    HStack {
                        Text("fiyat")
                            .foregroundStyle(Color("mainColor")).bold()
                            .font(.system(size: 35))
                        
                        Spacer()
                        
                        Button("buttonYazi") {
                            
                        }
                        .padding(10)
                        .foregroundStyle(Color("textColor1"))
                        .background(Color("mainColor"))
                        .clipShape(.buttonBorder)
                        
                    }
                    .padding()
                }
                .navigationTitle("Pizza").navigationBarTitleDisplayMode( .inline)
            }
        }
        

    }
}

#Preview {
    ContentView()
}
