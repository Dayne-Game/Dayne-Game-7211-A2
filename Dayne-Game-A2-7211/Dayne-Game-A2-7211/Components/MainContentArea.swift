//
//  MainContentArea.swift
//  Dayne-Game-A2-7211
//
//  Created by Dayne Game on 8/11/19.
//  Copyright © 2019 Dayne Game. All rights reserved.
//

import SwiftUI

struct MainContentArea: View {
    var body: some View {
        Rectangle()
            .fill(Color(red: 0.96, green: 0.96, blue: 0.96, opacity: 1))
            .frame(height: 449)
    }
}

struct MainContentArea_Previews: PreviewProvider {
    static var previews: some View {
        MainContentArea()
    }
}
