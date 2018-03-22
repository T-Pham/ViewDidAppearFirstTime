//
//  ViewDidAppearFirstTime.swift
//  Pods-ViewDidAppearFirstTime_Example
//
//  Created by Thanh Pham on 3/22/18.
//

import UIKit

var ViewWillAppearOnceKey: Int8 = 0
var ViewDidAppearOnceKey: Int8 = 0

@objc
public protocol FirstAppearance {

    @objc
    optional func viewWillAppearFirstTime(_ animated: Bool)

    @objc
    optional func viewDidAppearFirstTime(_ animated: Bool)
}

extension UIViewController {

    public static func activateFirstAppearance() {
        let _ = self.activateFirstAppearanceInternal
    }

    var viewWillAppearOnce: Bool {
        get {
            return objc_getAssociatedObject(self, &ViewWillAppearOnceKey) as? Bool ?? false
        }
        set {
            objc_setAssociatedObject(self, &ViewWillAppearOnceKey, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
    }

    var viewDidAppearOnce: Bool {
        get {
            return objc_getAssociatedObject(self, &ViewDidAppearOnceKey) as? Bool ?? false
        }
        set {
            objc_setAssociatedObject(self, &ViewDidAppearOnceKey, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
    }

    @objc
    func tpm_viewWillAppear(_ animated: Bool) {
        if !self.viewWillAppearOnce {
            (self as? FirstAppearance)?.viewWillAppearFirstTime?(animated)
            self.viewWillAppearOnce = true
        }
        self.tpm_viewWillAppear(animated)
    }

    @objc
    func tpm_viewDidAppear(_ animated: Bool) {
        if !self.viewDidAppearOnce {
            (self as? FirstAppearance)?.viewDidAppearFirstTime?(animated)
            self.viewDidAppearOnce = true
        }
        self.tpm_viewDidAppear(animated)
    }

    static var activateFirstAppearanceInternal: Void = {
        let viewWillAppearSelector = #selector(UIViewController.viewWillAppear(_:))
        let tpmViewWillAppearSelector = #selector(UIViewController.tpm_viewWillAppear(_:))

        let viewWillAppearMethod = class_getInstanceMethod(UIViewController.self, viewWillAppearSelector)!
        let tpmViewWillAppearMethod = class_getInstanceMethod(UIViewController.self, tpmViewWillAppearSelector)!

        method_exchangeImplementations(tpmViewWillAppearMethod, viewWillAppearMethod)

        let viewDidAppearSelector = #selector(UIViewController.viewDidAppear(_:))
        let tpmViewDidAppearSelector = #selector(UIViewController.tpm_viewDidAppear(_:))

        let viewDidAppearMethod = class_getInstanceMethod(UIViewController.self, viewDidAppearSelector)!
        let tpmViewDidAppearMethod = class_getInstanceMethod(UIViewController.self, tpmViewDidAppearSelector)!

        method_exchangeImplementations(tpmViewDidAppearMethod, viewDidAppearMethod)
    }()
}
