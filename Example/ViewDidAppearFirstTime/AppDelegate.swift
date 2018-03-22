//
//  AppDelegate.swift
//  ViewDidAppearFirstTime
//
//  Created by t-pham on 03/22/2018.
//  Copyright (c) 2018 t-pham. All rights reserved.
//

import UIKit
import ViewDidAppearFirstTime

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UIViewController.activateFirstAppearance()
        return true
    }
}
