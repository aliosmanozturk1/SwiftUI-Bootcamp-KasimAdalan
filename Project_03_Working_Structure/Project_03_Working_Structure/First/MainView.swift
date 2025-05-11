//
//  MainView.swift
//  Project_03_Working_Structure
//
//  Created by Ali Osman Öztürk on 10.05.2025.
//

import SwiftUI

struct MainView: View {
    @State private var counter = 0
    @State private var showGameView: Bool = false
    
    init() {
        print("init metodu çalıştı.")
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 50) {
                Text("Counter: \(counter)")
                
                Button("Increase Counter") {
                    counter = counter + 1
                }
                
                Divider()
                
                Button("Start Game") {
                    showGameView = true
                }
                .navigationTitle("Main Page")
                .toolbar {
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        Button("Ayarlar") {
                            print("Ayarlar butonuna tıklandı.")
                        }
                        Button {
                            print("Artı tıklandı")
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                    
                    
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Geri") {
                            print("Geri butonuna tıklandı.")
                        }
                    }
                }
                .navigationDestination(isPresented: $showGameView) {
                    let kisi = Kisiler(isim: "Ali", yas: 24, boy: 1.78, bekar: true)
                    GameView(kisi: kisi)
                }.onAppear() {
                    print("onAppear çalıştı. GameView gösterildi.")
                }.onDisappear {
                    print("onDissaepear çalıştı.")
                }
            }
            
        }
    }
}

#Preview {
    MainView()
}
