//
//  View02.swift
//  Project_01_Stack
//
//  Created by Ali Osman Öztürk on 10.05.2025.
//

import SwiftUI

struct View02: View {
    var body: some View {
        VStack {
            Rectangle().fill(Color.red).frame(width: 60, height: 60)
            Rectangle().fill(Color.blue).frame(width: 50, height: 50)
            Rectangle().fill(Color.green).frame(width: 40, height: 40)
        }
        
        Divider()
        
        VStack(alignment: .leading) {
            Rectangle().fill(Color.red).frame(width: 60, height: 60)
            Rectangle().fill(Color.blue).frame(width: 50, height: 50)
            Rectangle().fill(Color.green).frame(width: 40, height: 40)
        }
        
        Divider()
        
        VStack(alignment: .trailing) {
            Rectangle().fill(Color.red).frame(width: 60, height: 60)
            Rectangle().fill(Color.blue).frame(width: 50, height: 50)
            Rectangle().fill(Color.green).frame(width: 40, height: 40)
        }
    }
}

#Preview {
    View02()
}
