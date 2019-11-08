//
//  HomeView.swift
//  Dayne-Game-A2-7211
//
//  Created by Dayne Game on 8/11/19.
//  Copyright © 2019 Dayne Game. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 0) {
                    Header()
                    
                    ZStack {
                        // MAIN GRAY BODY
                        Rectangle()
                            .fill(Color(red: 0.96, green: 0.96, blue: 0.96, opacity: 1))
                            .frame(height: 449)
                        
                        HStack(spacing: 20) {
                            VStack(alignment: .leading) {
                                ZStack {
                                    SmallPanel()
                                        .offset(y: -225)
                                    
                                    VStack {
                                        Text("21")
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                        
                                        Text("LESSONS")
                                            .font(.body)
                                            .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74, opacity: 1))
                                    }.offset(y: -235)
                                }
                            }
                            VStack(alignment: .leading) {
                                ZStack {
                                    SmallPanel()
                                        .offset(y: -225)
                                    
                                    VStack {
                                        Text("5")
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                        
                                        Text("APPS")
                                            .font(.body)
                                            .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74, opacity: 1))
                                    }.offset(y: -235)
                                }
                            }
                        }
                        
                        BigPanel()
                        
                        VStack(spacing: 5) {
                            // MAIN TITLE (APP DEVELOPMENT HEADLINE)
                            Text("Intro to App Development with Swift")
                                .font(.headline)
                            
                            // ACTIVITY TITLE
                            Text("Activity")
                                .font(.subheadline)
                                .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74, opacity: 1))
                        }.offset(y: -120)
                        
                        ProgressCircle()
                            .offset(y: 20)
                        
                        VStack {
                            // 60% TEXT
                            Text("60%")
                                .font(.largeTitle)
                            
                            // COMPLETED TEXT
                            Text("Completed")
                                .font(.body)
                                .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74, opacity: 1))
                        }.offset(y: 20)
                        
                        LessonAppView()
                            .offset(y: 160)
                    }
                }
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
