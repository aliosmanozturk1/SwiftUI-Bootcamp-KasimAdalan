//
//  View03.swift
//  Project_01_Stack
//
//  Created by Ali Osman Öztürk on 10.05.2025.
//

import SwiftUI

struct View03: View {
    var body: some View {
        ZStack {
            Rectangle().fill(Color.red).frame(width: 100, height: 100)
            Rectangle().fill(Color.blue).frame(width: 80, height: 80)
            Rectangle().fill(Color.green).frame(width: 60, height: 60)
        }
        
        Divider()
        
        ZStack(alignment: .bottom)  {
            Rectangle().fill(Color.red).frame(width: 100, height: 100)
            Rectangle().fill(Color.blue).frame(width: 80, height: 80)
            Rectangle().fill(Color.green).frame(width: 60, height: 60)
        }
        
        Divider()
        
        ZStack(alignment: .bottomLeading)  {
            Rectangle().fill(Color.red).frame(width: 100, height: 100)
            Rectangle().fill(Color.blue).frame(width: 80, height: 80)
            Rectangle().fill(Color.green).frame(width: 60, height: 60)
        }
        
        ZStack(alignment: .bottomTrailing)  {
            Rectangle().fill(Color.red).frame(width: 100, height: 100)
            Rectangle().fill(Color.blue).frame(width: 80, height: 80)
            Rectangle().fill(Color.green).frame(width: 60, height: 60)
        }
        
        ZStack(alignment: .leading)  {
            Rectangle().fill(Color.red).frame(width: 100, height: 100)
            Rectangle().fill(Color.blue).frame(width: 80, height: 80)
            Rectangle().fill(Color.green).frame(width: 60, height: 60)
        }
        
        ZStack(alignment: .top)  {
            Rectangle().fill(Color.red).frame(width: 100, height: 100)
            Rectangle().fill(Color.blue).frame(width: 80, height: 80)
            Rectangle().fill(Color.green).frame(width: 60, height: 60)
        }
        
        ZStack(alignment: .topTrailing)  {
            Rectangle().fill(Color.red).frame(width: 100, height: 100)
            Rectangle().fill(Color.blue).frame(width: 80, height: 80)
            Rectangle().fill(Color.green).frame(width: 60, height: 60)
        }
        
    }
}


#Preview {
    View03()
}
