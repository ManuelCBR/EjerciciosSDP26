//
//  MyOptionButton.swift
//  Ejercicio01UISDP25
//
//  Created by Manuel Bermudo on 16/11/25.
//

import SwiftUI

struct MyOptionButton: View {
    let image: String
    var body: some View {
        Button { } label: {
            Image(systemName: image)
                .font(.title)
        }
    }
}

#Preview {
    MyOptionButton(image: "quote.bubble")
}
