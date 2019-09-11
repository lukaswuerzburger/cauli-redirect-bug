//
//  AppDelegate.swift
//  cauli-redirect-bug
//
//  Created by Lukas Würzburger on 9/9/19.
//  Copyright © 2019 Lukas Würzburger. All rights reserved.
//

import UIKit
import Cauliframework

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - UI Elements

    var window: UIWindow?

    // MARK: - Variables

    var cauli: Cauli!

    // MARK: - Application Delegate

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        cauli = Cauli([], configuration: .standard)
        cauli.run()
        return true
    }
}

