Pod::Spec.new do |s|
  s.name             = 'ViewDidAppearFirstTime'
  s.version          = '0.2.0'
  s.summary          = 'Lets you know whether your `UIViewController` subclasses\' `viewWillAppear` and `viewDidAppear` are being called for the first time.'
  s.description      = <<-DESC
ViewDidAppearFirstTime lets you know whether your `UIViewController` subclasses\' `viewWillAppear` and `viewDidAppear` are being called for the first time.
                       DESC
  s.homepage         = 'https://github.com/T-Pham/ViewDidAppearFirstTime'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Thanh Pham' => 'minhthanh@me.com' }
  s.source           = { :git => 'https://github.com/t-pham/ViewDidAppearFirstTime.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'ViewDidAppearFirstTime/Classes/**/*'
end
