//
//  BigPanel.swift
//  Dayne-Game-A2-7211
//
//  Created by Dayne Game on 8/11/19.
//  Copyright © 2019 Dayne Game. All rights reserved.
//

import SwiftUI

struct BigPanel: View {
    var body: some View {
        ZStack {
            // INNER BIG RECTANGLE (GRAY)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(red: 0.90, green: 0.90, blue: 0.90,opacity: 1))
                .frame(minWidth: 10, idealWidth: 336, maxWidth: 336, minHeight: 10, idealHeight: 96, maxHeight: 96)
                .shadow(color: .gray, radius: 3, x: 0, y: 1)
                .offset(y: 158)
            
            // OUTER BIG RECTANGLE (WHITE)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .frame(minWidth: 10, idealWidth: 352, maxWidth: 352, minHeight: 10, idealHeight: 346, maxHeight: 346)
                .shadow(color: .gray, radius: 3, x: 0, y: 1)
                .offset(y: 20)
        }
    }
}

struct BigPanel_Previews: PreviewProvider {
    static var previews: some View {
        BigPanel()
    }
}
