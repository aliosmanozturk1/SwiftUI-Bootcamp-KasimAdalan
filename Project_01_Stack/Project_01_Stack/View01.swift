//
//  View01.swift
//  Project_01_Stack
//
//  Created by Ali Osman Öztürk on 10.05.2025.
//

import SwiftUI

struct View01: View {
    var body: some View {
        HStack {
            Rectangle().fill(Color.red).frame(width: 100, height: 100)
            Rectangle().fill(Color.blue).frame(width: 90, height: 90)
            Rectangle().fill(Color.green).frame(width: 80, height: 80)
        }
        
        Divider()
        
        HStack(alignment: .top) {
            Rectangle().fill(Color.red).frame(width: 100, height: 100)
            Rectangle().fill(Color.blue).frame(width: 90, height: 90)
            Rectangle().fill(Color.green).frame(width: 80, height: 80)
        }
        
        Divider()
        
        HStack(alignment: .bottom) {
            Rectangle().fill(Color.red).frame(width: 100, height: 100)
            Rectangle().fill(Color.blue).frame(width: 90, height: 90)
            Rectangle().fill(Color.green).frame(width: 80, height: 80)
        }
    }
}

#Preview {
    View01()
}
