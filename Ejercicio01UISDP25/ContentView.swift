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
                Button {
                    
                } label: {
                    Text("Música")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .frame(minWidth: 80)
                }
                .buttonStyle(.bordered)
                .tint(.black)
                
                Button {
                    
                } label: {
                    Text("Explorar")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .frame(minWidth: 80)
                }
                .buttonStyle(.bordered)
                .tint(.black)
                
                Button {
                    
                } label: {
                    Text("Listas")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .frame(minWidth: 80)
                }
                .buttonStyle(.bordered)
                .tint(.black)

            }
            .padding()
            
            //Botones de control
            HStack{
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "backward.fill")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .padding()
                        .background(
                            LinearGradient(
                                colors: [Color.black.opacity(0.80), Color.black.opacity(0.6)],
                                startPoint: .bottom,
                                endPoint: .top
                            )
                        )
                        .clipShape(Circle())
                }
                
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "play.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .padding()
                        .background(
                            LinearGradient(
                                colors: [Color.black.opacity(0.80), Color.black.opacity(0.3)],
                                startPoint: .leading,
                                endPoint: .top
                            )
                        )
                        .clipShape(Circle())
                        
                        
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .padding()
                        .background(
                            LinearGradient(
                                colors: [Color.black.opacity(0.80), Color.black.opacity(0.3)],
                                startPoint: .leading,
                                endPoint: .top
                            )
                        )
                        .clipShape(Circle())
                }
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
                Button {
                    
                } label: {
                    Image(systemName: "quote.bubble")
                        .foregroundStyle(.gray)
                        .font(.title)
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "airplay.audio")
                        .foregroundStyle(.white)
                        .font(.title)
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "list.bullet")
                        .foregroundStyle(.gray)
                        .font(.title)
                }

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
