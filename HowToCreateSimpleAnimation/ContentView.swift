//
//  ContentView.swift
//  HowToCreateSimpleAnimation
//
//  Created by ramil on 11.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    
    var body: some View {
        VStack {
            Text("SwiftUI")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color.pink)
                .padding(4)
                .animation(.easeOut(duration: 0.3))
            
            Image("img6")
                .frame(width: show ? 414 : 300, height: show ? 300 : 300)
                .clipped()
                .cornerRadius(show ? 0 : 300)
                .shadow(radius: show ? 0 : 30)
                .blur(radius: show ? 0 : 30)
                .animation(.spring())
            
            Text("Simple Animation in SwiftUI")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(Color.green)
                .scaleEffect(show ? 2 : 1)
                .padding(4)
                .animation(.easeOut(duration: 0.3))
            
            Button(action: {
                withAnimation {
                    self.show.toggle()
                }
            }) {
                Text("Animate")
                    .colorMultiply(Color.green)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
