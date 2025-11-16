//
//  MyControlButton.swift
//  Ejercicio01UISDP25
//
//  Created by Manuel Bermudo on 16/11/25.
//

import SwiftUI

struct MyControlButton: View {
    let symbol: String
    
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: symbol)
                .foregroundStyle(.white)
                .padding()
                .background(
                    LinearGradient(
                        colors: [Color.black.opacity(0.8), Color.black.opacity(0.2)],
                        startPoint: .leading,
                        endPoint: .top
                    )
                )
                .clipShape(Circle())
        }
    }
}

#Preview {
    MyControlButton(symbol: "play.fill")
}
