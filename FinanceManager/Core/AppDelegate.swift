//
//  AppDelegate.swift
//  FinanceManager
//
//  Created by Bercik on 21/12/2023.
//

import UIKit
import FirebaseCore
import FirebaseFirestore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        let db = Firestore.firestore()
        var navigationController = UINavigationController(rootViewController: LoginViewController())
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        
       // let navigationController = UINavigationController(rootViewController: LoginViewController())
        window.rootViewController = navigationController
        
        window.makeKeyAndVisible()
        
        self.window = window
        return true
    }

    // MARK: UISceneSession Lifecycle

    


}

