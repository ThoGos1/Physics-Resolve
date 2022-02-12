//
//  ContentView.swift
//  Physics Resolve
//
//  Created by Thomas Gosvig on 1/15/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isRotating = false
    @State private var isHidden = false
    
    var body: some View {
        
        VStack {
            HStack {
                VStack(spacing: 14) {
                    
                    Rectangle()
                        .frame(width: 64.0, height: 10.0)
                        .cornerRadius(4)
                        .rotationEffect(.degrees(isRotating ? 48 : 0), anchor: .leading)
                    
                    
                    Rectangle()
                        .frame(width: 64.0, height: 10.0)
                        .cornerRadius(4)
                        .scaleEffect(isHidden ? 0 : 1, anchor: isHidden ? .trailing: .leading)
                        .opacity(isHidden ? 0 : 1)
                    
                    
                    Rectangle()
                        .frame(width: 64.0, height: 10.0)
                        .cornerRadius(4)
                        .rotationEffect(.degrees(isRotating ? -48 : 0), anchor: .leading)
                    
                    
                }
                .onTapGesture {
                    withAnimation(.interpolatingSpring(stiffness: 300, damping: 15)){
                        isRotating.toggle()
                        isHidden.toggle()
                    }
                }
                .padding(.leading, 2.0)
                .scaleEffect(0.5)
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
