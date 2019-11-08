//
//  ContentView.swift
//  Dayne-Game-A2-7211
//
//  Created by Dayne Game on 8/11/19.
//  Copyright © 2019 Dayne Game. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.white
    }

    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
            }.tag(1)
            
            PlaygroundView()
                .tabItem {
                    VStack {
                        Image(systemName: "pencil.circle")
                        Text("Lessons")
                    }
            }.tag(2)
            
            InstructionView()
                .tabItem {
                    VStack {
                        Image(systemName: "app")
                        Text("App Info")
                    }
            }.tag(3)
            
            AboutView()
                .tabItem {
                    VStack {
                        Image(systemName: "info.circle")
                        Text("About")
                    }
            }.tag(4)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
