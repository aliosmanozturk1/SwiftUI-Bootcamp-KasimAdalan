//
//  ResultView.swift
//  Project_03_Working_Structure
//
//  Created by Ali Osman Öztürk on 10.05.2025.
//

import SwiftUI

struct ResultView: View {
    @Environment(\.presentationMode) var pm
    
    var body: some View {
        VStack(spacing: 40) {
                Text("Sonuç Ekranı")
                .font(.system(size: 40))
                
                Button("Close") {
                    pm.wrappedValue.dismiss()
                }
            }
        
    }
}

#Preview {
    ResultView()
}
