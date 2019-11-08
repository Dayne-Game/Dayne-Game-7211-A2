//
//  ProgressCircle.swift
//  Dayne-Game-A2-7211
//
//  Created by Dayne Game on 8/11/19.
//  Copyright © 2019 Dayne Game. All rights reserved.
//

import SwiftUI

struct ProgressCircle: View {
    var body: some View {
        ZStack {
            // OUTER RED CIRCLE
            Circle()
                .stroke(Color.red, lineWidth: 20.0)
                .frame(width: 189, height: 189)
                .rotationEffect(Angle(degrees:-90))
            
            // OUTER ORANGE CIRCLE
            Circle()
                .trim(from: 0.0, to: 00.6)
                .stroke(Color.orange, lineWidth: 20.0)
                .frame(width: 189, height: 189)
                .rotationEffect(Angle(degrees:-90))
                
            // INNER GRAY AREA INSIDE CIRCLE
            Circle()
                .fill(Color(red: 0.96, green: 0.96, blue: 0.96, opacity: 1))
                .frame(width: 150, height: 150)
                .rotationEffect(Angle(degrees:-90))
        }
    }
}

struct ProgressCircle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircle()
    }
}
