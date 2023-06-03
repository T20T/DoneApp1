//
//  Class.swift
//  DoneApp
//
//  Created by Taghrid Alkwayleet on 14/11/1444 AH.
//

import Foundation
import UIKit
import SwiftUI

class Counter: ObservableObject {
    @Published var count: Int
    
    init(count: Int) {
        self.count = count
    }
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    let counter = Counter(count: 0)

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: ContentView().environmentObject(counter))
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
