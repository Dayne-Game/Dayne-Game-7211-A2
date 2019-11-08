//
//  Content.swift
//  Dayne-Game-A2-7211
//
//  Created by Dayne Game on 8/11/19.
//  Copyright © 2019 Dayne Game. All rights reserved.
//

import Foundation
import SwiftUI

struct Content: Codable {
    var name: String
    var content: String
    
    private enum CodingKeys: String, CodingKey {
        case name = "name"
        case content = "content"
    }
    
    init?() {
        return nil
    }
}
