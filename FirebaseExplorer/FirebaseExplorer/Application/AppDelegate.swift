//
//  AppDelegate.swift
//  FirebaseExplorer
//
//  Created by Chetan Agarwal on 26/12/17.
//  Copyright © 2017 deuxlapins. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions
        launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        #if DEBUG
            FirebaseConfiguration.shared
                .analyticsConfiguration
                .setAnalyticsCollectionEnabled(false)
        #else
            // do something else
        #endif

        FirebaseApp.configure()

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = RootRouter.assembleModule()
        window?.makeKeyAndVisible()

        return true
    }
}
