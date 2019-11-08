//
//  GetRepoContent.swift
//  Dayne-Game-A2-7211
//
//  Created by Dayne Game on 8/11/19.
//  Copyright © 2019 Dayne Game. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class GetRepoContent: ObservableObject {
    @Published var myRepo = Content()
    
    init(repoPath: String) {
        let name = repoPath
        load(repoPath: name)
    }
    
    func load(repoPath: String) {
        guard let url = URL(string: "https://api.github.com/repos/daynes-swift/\(repoPath)/readme?client_id=9020c9d9e8beb1b4af3a&client_secret=036c11e53692d9350454d0786b1d8fda694e4675") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                guard let json = data else { return }
                let contentData = try JSONDecoder().decode(Content.self, from: json)
                DispatchQueue.main.async {
                    self.myRepo = contentData
                }
            }
            catch {
                print(error)
            }
        }.resume()
    }
}
