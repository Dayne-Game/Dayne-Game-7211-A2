//
//  LessonAppView.swift
//  Dayne-Game-A2-7211
//
//  Created by Dayne Game on 8/11/19.
//  Copyright © 2019 Dayne Game. All rights reserved.
//

import SwiftUI

struct LessonAppView: View {
    var body: some View {
        // LESSONS + APPS (COMPLETED) HSTACK
        HStack(spacing: 100) {
            
            // LESSONS COMPLETED VSTACK
            VStack {
                
                // COMPLETED NUMBER OF LESSONS OUT OF 21
                Text("13/21")
                    .font(.headline)
                
                // LESSONS TEXT
                Text("Lessons")
                    .font(.body)
                    .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74, opacity: 1))
            }
            
            // APPS COMPLETED VSTACK
            VStack {
                
                // COMPLETED NUMBER OF APPS OUT OF 5
                Text("01/05")
                    .font(.headline)
                
                Text("Apps")
                    .font(.body)
                    .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74, opacity: 1))
            }
        }
    }
}

struct LessonAppView_Previews: PreviewProvider {
    static var previews: some View {
        LessonAppView()
    }
}
