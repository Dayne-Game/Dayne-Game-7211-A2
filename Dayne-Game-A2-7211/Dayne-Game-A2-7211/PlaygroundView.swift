//
//  PlaygroundView.swift
//  Dayne-Game-A2-7211
//
//  Created by Dayne Game on 8/11/19.
//  Copyright © 2019 Dayne Game. All rights reserved.
//

import SwiftUI

struct PlaygroundView: View {
    @ObservedObject var repoData = GetAllRepo()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(repoData.repos) { repo in
                    NavigationLink(
                        destination: RepoContentView(repoName: repo.name)
                    ) {
                        Text(repo.description)
                    }
                }
            }.navigationBarTitle("Lessons", displayMode: .inline)
            .background(NavigationConfigurator { nc in
                nc.navigationBar.barTintColor = .orange
                nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
            })
        }
    }
}

struct RepoContentView: View {
    var repoPath: String
    var repoContent: GetRepoContent
    
    init(repoName: String) {
        self.repoPath = repoName
        self.repoContent = GetRepoContent(repoPath: repoPath)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text(base64ToUTF8(content: repoContent.myRepo!.content))
                    .font(.body)
                    .fontWeight(.light)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(20)
                Spacer()
            }.navigationBarTitle("Content", displayMode: .inline)
            .background(NavigationConfigurator { nc in
                nc.navigationBar.barTintColor = .orange
                nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
            })
        }
    }
}

// This Function converts Base64 encoded to UTF8
func base64ToUTF8(content: String) -> String {
    if let data = Data(base64Encoded: content, options: .ignoreUnknownCharacters) {
        return String(data: data, encoding: .utf8)!
    }
    return ""
}

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }

}

struct PlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundView()
    }
}
