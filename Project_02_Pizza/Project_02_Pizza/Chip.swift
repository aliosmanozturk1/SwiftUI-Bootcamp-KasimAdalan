//
//  Chip.swift
//  Project_02_Pizza
//
//  Created by Ali Osman Öztürk on 10.05.2025.
//

 import SwiftUI

struct Chip: View {
    var name = ""
    var body: some View {
        Button(name) {
            
        }
        .padding(10)
        .foregroundStyle(Color("textColor1"))
        .background(Color("mainColor"))
        .clipShape(.buttonBorder)
    }
}
