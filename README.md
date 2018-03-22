# ViewDidAppearFirstTime

This library adds support for `viewWillAppearFirstTime(_:)` and `viewDidAppearFirstTime(_:)` methods to your `UIViewController` subclasses.

Those methods are called automagically when `viewWillAppear(_:)` and `viewDidAppear(_:)` of the instance are called only for the first time, respectively.

# Usage

In your AppDelegate, activate the library:

```swift
import ViewDidAppearFirstTime

...
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    UIViewController.activateFirstAppearance()
    return true
}
```

Then, in your UIViewController subclasses:

```swift
class ViewController: UIViewController, FirstAppearance {

    func viewWillAppearFirstTime(_ animated: Bool) {
        print("ViewController viewWillAppearFirstTime")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController viewWillAppear")
    }

    func viewDidAppearFirstTime(_ animated: Bool) {
        print("ViewController viewDidAppearFirstTime")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController viewDidAppear")
    }
}
```
