//
//  ViewController.swift
//  ViewDidAppearFirstTime
//
//  Created by t-pham on 03/22/2018.
//  Copyright (c) 2018 t-pham. All rights reserved.
//

import UIKit
import ViewDidAppearFirstTime

class ViewController: UIViewController, FirstAppearance {

    private let objectiveCViewController = ObjectiveCViewController()

    func viewWillAppearFirstTime(_ animated: Bool) {
        print("ViewController viewWillAppearFirstTime")
    }

    func viewWillAppearAgain(_ animated: Bool) {
        print("ViewController viewWillAppearAgain")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController viewWillAppear")
    }

    func viewDidAppearFirstTime(_ animated: Bool) {
        print("ViewController viewDidAppearFirstTime")
    }

    func viewDidAppearAgain(_ animated: Bool) {
        print("ViewController viewDidAppearAgain")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController viewDidAppear")
    }

    @IBAction func showObjectiveCViewController() {
        present(objectiveCViewController, animated: true, completion: nil)
    }
}
