//
//  AboutView.swift
//  Dayne-Game-A2-7211
//
//  Created by Dayne Game on 8/11/19.
//  Copyright © 2019 Dayne Game. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            ScrollView {
                ZStack {
                    Rectangle()
                        .fill(Color.orange)
                        .frame(height: 100)
                    
                    Text("About")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .fontWeight(.semibold)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .padding(.top, 30)
                }
                
                VStack() {
                    Text("Outline")
                        .font(.title)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    Text("For my Special Topic I worked through a course book called Intro to App Development with Swift. it had a total of 21 Lessons each lesson either consisted of exercises or applications.")
                        .font(.body)
                        .fontWeight(.light)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    Text("App Outline")
                        .font(.title)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    Text("This app, shows all the completed exercises in corresponding Lessons, some lessons didn't have exercises and in those lessons you built apps, but I can't show them in this Application. to get all the content (exercises) for each lesson I used two Github APIs, the first API got the Lessons and the second API got the content. You can find a more in-depth description on the App Info Page ")
                        .font(.body)
                        .fontWeight(.light)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    Text("Developer Outline")
                        .font(.title)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    Text("This app was solely designed and developed by me (Dayne Game). This is the first time, i've created my own individual app, using Swift and SwiftUI and its AWESOME!")
                        .font(.body)
                        .fontWeight(.light)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 10)
                }
                .padding(20)
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
