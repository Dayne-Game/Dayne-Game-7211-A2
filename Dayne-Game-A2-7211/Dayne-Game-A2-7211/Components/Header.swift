//
//  Header.swift
//  Dayne-Game-A2-7211
//
//  Created by Dayne Game on 8/11/19.
//  Copyright © 2019 Dayne Game. All rights reserved.
//

import SwiftUI

struct Header: View {
    var body: some View {
        ZStack() {
            Rectangle()
                .fill(Color.orange)
                .frame(height: 364)
            Image("swiftlogo")
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
