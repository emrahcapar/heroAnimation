//
//  ContentView.swift
//  heroAnimation
//
//  Created by Emrah Çapar on 3.11.2022.
//

import SwiftUI

struct ContentView: View {
    @Namespace var heroAnimation: Namespace.ID
    @State var isClicked: Bool = false
    
    var body: some View {
        ZStack {
            if !isClicked {
                VStack {
                    HStack(spacing: 32) {
                        Image("kizKulesi")
                            .resizable()
                            .frame(width: 75, height: 75)
                            .cornerRadius(10)
                            .matchedGeometryEffect(id: "image", in: heroAnimation)
                        Text("Kız Kulesi")
                            .font(.title3.italic())
                            .matchedGeometryEffect(id: "title", in: heroAnimation)
                        Spacer()
                    }
                    .padding()
                    Spacer()
                }
            } else {
                VStack {
                    Image("kizKulesi")
                        .resizable()
                        .frame(width: 250, height: 250)
                        .cornerRadius(100)
                        .matchedGeometryEffect(id: "image", in: heroAnimation)
                    Text("Kız Kulesi")
                        .font(.title3.italic())
                        .matchedGeometryEffect(id: "title", in: heroAnimation)
                    Spacer()
                }
            }
            
        }
        .onTapGesture {
            withAnimation(.spring()) {
                isClicked.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
