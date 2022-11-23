//
//  ContentView.swift
//  Crypto
//
//  Created by Adam Gerber on 22/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.theme.background
                .ignoresSafeArea()
            
            VStack{
                Text("Accent Color")
                    .foregroundColor(Color.theme.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
