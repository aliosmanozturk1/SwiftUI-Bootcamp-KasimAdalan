//
//  View04.swift
//  Project_01_Stack
//
//  Created by Ali Osman Öztürk on 10.05.2025.
//

import SwiftUI

struct View04: View {
    var body: some View {
        HStack {
            Rectangle().fill(Color.red).frame(width: 100, height: 100)
            Rectangle().fill(Color.yellow).frame(width: 100, height: 100)
            
            VStack {
                Rectangle().fill(Color.green).frame(width: 100, height: 100)
                Rectangle().fill(Color.blue).frame(width: 100, height: 100)
            }
        }
        
        VStack {
            Rectangle().fill(Color.red).frame(width: 100, height: 100)
            Rectangle().fill(Color.yellow).frame(width: 100, height: 100)
            
            HStack {
                Rectangle().fill(Color.green).frame(width: 100, height: 100)
                Rectangle().fill(Color.blue).frame(width: 100, height: 100)
            }
        }
        
        ZStack {
            Rectangle().fill(Color.black).frame(width: 350, height: 220 )
            HStack {
                Rectangle().fill(Color.red).frame(width: 100, height: 100)
                Rectangle().fill(Color.yellow).frame(width: 100, height: 100)
                
                VStack {
                    Rectangle().fill(Color.green).frame(width: 100, height: 100)
                    Rectangle().fill(Color.blue).frame(width: 100, height: 100)
                }
            }
        }
        
    }
}

#Preview {
    View04()
}
