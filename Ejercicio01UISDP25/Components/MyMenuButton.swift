//
//  MyMenuButton.swift
//  Ejercicio01UISDP25
//
//  Created by Manuel Bermudo on 16/11/25.
//

import SwiftUI

struct MyMenuButton: View {
    let text: String
    
    var body: some View {
        Button {
            
        } label: {
            Text(text)
                .font(.title2)
                .foregroundStyle(.white)
                .frame(minWidth: 80)
        }
        .buttonStyle(.bordered)
        .tint(.black)
    }
}

#Preview {
    MyMenuButton(text: "Música")
}
