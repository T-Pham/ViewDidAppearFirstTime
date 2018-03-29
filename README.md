# ViewDidAppearFirstTime

The library lets you know whether your `UIViewController` subclasses' `viewWillAppear` and `viewDidAppear` are being called for the first time.
It adds the following methods:

- `viewWillAppearFirstTime(_:)`: called when viewWillAppear the first time.
- `viewWillAppearAgain(_:)`: called when viewWillAppear the second time on.
- `viewDidAppearFirstTime(_:)`: called when viewDidAppear the first time.
- `viewDidAppearAgain(_:)`: called when viewDidAppear the second time on.

Before:

```swift
import UIKit

class ViewController: UIViewController {

    var firstTime = true

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if firstTime {
            //viewWillAppear first time
        } else {
            //viewWillAppear again
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if firstTime {
            //viewDidAppear first time
            firstTime = false
        } else {
            //viewDidAppear again
        }
    }
}
```

After:

```swift
import UIKit
import ViewDidAppearFirstTime

//in AppDelegate: UIViewController.activateFirstAppearance()

class ViewController: UIViewController, FirstAppearance {

    func viewWillAppearFirstTime(_ animated: Bool) {
        //viewWillAppear first time
    }

    func viewWillAppearAgain(_ animated: Bool) {
        //viewWillAppear again
    }

    func viewDidAppearFirstTime(_ animated: Bool) {
        //viewDidAppear first time
    }

    func viewDidAppearAgain(_ animated: Bool) {
        //viewDidAppear again
    }
}
```

# Installation

`pod 'ViewDidAppearFirstTime'`

# License

ViewDidAppearFirstTime is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
