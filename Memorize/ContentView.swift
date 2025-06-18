//
//  ContentView.swift
//  Memorize
//
//  Created by Timur on 6/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundStyle(Color(.orange))
        .padding()
        
    }
}

#Preview {
    ContentView()
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(Color(.white))
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
    }
}
