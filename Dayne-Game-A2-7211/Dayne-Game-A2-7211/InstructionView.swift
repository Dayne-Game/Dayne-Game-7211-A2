//
//  InstructionView.swift
//  Dayne-Game-A2-7211
//
//  Created by Dayne Game on 8/11/19.
//  Copyright © 2019 Dayne Game. All rights reserved.
//

import SwiftUI

struct InstructionView: View {
    var body: some View {
        VStack {
            ScrollView {
                ZStack {
                    Rectangle()
                        .fill(Color.orange)
                        .frame(height: 100)
                    
                    Text("Information")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .fontWeight(.semibold)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .padding(.top, 30)
                }
                
                VStack() {
                    Text("How the App Works")
                        .font(.title)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    Text("The application is made with a brand new technology called SwiftUI, which is developed and built by Apple. The programming language used in SwiftUI is Swift. Swift is a programming language that was developed by Apple in 2014.")
                        .font(.body)
                        .fontWeight(.light)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    Text("This applications was developed to test my skills after learning Swift for the first time this year for my Special Topic. After I completed all of my Lessons (total of 20) I created individual Github Repositories for each lesson, which included a README.md file, where I manually wrote information inside, which was either exercises I did with Playgrounds, and or a small blurb if I created and App in that lesson as I can’t show an app from Markdown.")
                        .font(.body)
                        .fontWeight(.light)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    Text("The Github Repositories could be accessed via  the Github API v3. I decoded the JSON string and looped it around a List with navigation links, and displayed the Repos description on the link. When you click one of the Repo links it would open another view, pass the repos name (eg: Swift-Lesson-03) to another Github API used for getting README.md files, decode that JSON string and it would return a base64 encoded string of the content inside the README.md file. Before the content is displayed to the user, it gets run through a function that converts base64 to UTF8 and gets displayed!")
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

struct InstructionView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionView()
    }
}
