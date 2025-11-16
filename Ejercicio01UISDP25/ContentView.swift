//
//  ContentView.swift
//  Ejercicio01UISDP25
//
//  Created by Manuel Bermudo on 15/11/25.
//

import SwiftUI

struct ContentView: View {
    @State var progress: Double = 50
    @State var selection: Int = 0
    var body: some View {
        VStack {
            //Carátula
            Image(.lofi)
                .resizable()
                .scaledToFit()
                .frame(width: 350)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .overlay(alignment: .top) {
                    Text("Lo-fi")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, 70)
                }
            
            Spacer()
            //Barra de progreso
            VStack{
                Slider(value: $progress, in: 0...100)
                    .tint(.pink)
                HStack{
                    Text("1:25")
                        .font(.subheadline)
                    Spacer()
                    Text("-2:50")
                        .font(.subheadline)
                }
            }
            .padding(.horizontal)
        
            //Botones de menú
            HStack{
                MyMenuButton(text: "Música")
                
                MyMenuButton(text: "Explorar")
                
                MyMenuButton(text: "Listas")

            }
            .padding()
            
            //Botones de control
            HStack{
                Spacer()
                MyControlButton(symbol: "backward.fill")
                    .font(.title2)
                
                Spacer()
                MyControlButton(symbol: "play.fill")
                    .font(.largeTitle)
                
                Spacer()
                MyControlButton(symbol: "forward.fill")
                    .font(.title2)
                
                Spacer()
            }
            .padding()
            
            //Volumen
            HStack {
                Image(systemName: "speaker.minus")
                    .bold()
                ProgressView(value: 50, total: 100)
                    .tint(.white)
                Image(systemName: "speaker.plus")
                    .bold()
            }
            .padding()
            
            Spacer()
            //Opciones varias
            HStack {
                MyOptionButton(image: "quote.bubble")
                    .foregroundStyle(.gray)
                Spacer()
                MyOptionButton(image: "airplay.audio")
                    .foregroundStyle(.white)
                Spacer()
                MyOptionButton(image: "list.bullet")
                    .foregroundStyle(.gray)
            }
            .padding(.horizontal, 50)
            
            Spacer()
        }
        .background(
            Image(.lofi)
                .resizable()
                .scaledToFill()
                .opacity(0.8)
                .ignoresSafeArea()
                .blur(radius: 10)
        )
    }
}

#Preview {
    ContentView()
}
