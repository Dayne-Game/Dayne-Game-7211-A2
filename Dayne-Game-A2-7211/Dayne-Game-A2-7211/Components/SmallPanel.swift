//
//  SmallPanel.swift
//  Dayne-Game-A2-7211
//
//  Created by Dayne Game on 8/11/19.
//  Copyright © 2019 Dayne Game. All rights reserved.
//

import SwiftUI

struct SmallPanel: View {
    var body: some View {
        ZStack {
            
            // INNER RECTANGLE (GRAY)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(red: 0.90, green: 0.90, blue: 0.90, opacity: 1))
                .frame(minWidth: 10, idealWidth: 150, maxWidth: 150, minHeight: 10, idealHeight: 95, maxHeight: 95)
                .shadow(color: .gray, radius: 3, x: 0, y: 1)
                .offset(y: 0)
            
            // OUTER RECTANGLE (WHITE)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .frame(minWidth: 10, idealWidth: 167, maxWidth: 167, minHeight: 10, idealHeight: 90, maxHeight: 90)
                .shadow(color: .gray, radius: 3, x: 0, y: 1)
                .offset(y: -8)
            
        }
    }
}

struct SmallPanel_Previews: PreviewProvider {
    static var previews: some View {
        SmallPanel()
    }
}
