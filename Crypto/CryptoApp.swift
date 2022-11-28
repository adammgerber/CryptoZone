//
//  CryptoApp.swift
//  Crypto
//
//  Created by Adam Gerber on 22/11/2022.
//

import SwiftUI

@main
struct CryptoApp: App {
    @StateObject var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
