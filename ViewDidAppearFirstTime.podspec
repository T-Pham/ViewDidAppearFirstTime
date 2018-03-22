Pod::Spec.new do |s|
  s.name             = 'ViewDidAppearFirstTime'
  s.version          = '0.1.0'
  s.summary          = 'Adds viewDidAppearFirstTime(_:) and viewWillAppearFirstTime(_:) to UIViewController.'
  s.description      = <<-DESC
ViewDidAppearFirstTime adds viewDidAppearFirstTime(_:) and viewWillAppearFirstTime(_:) to UIViewController.
                       DESC
  s.homepage         = 'https://github.com/T-Pham/ViewDidAppearFirstTime'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Thanh Pham' => 'minhthanh@me.com' }
  s.source           = { :git => 'https://github.com/t-pham/ViewDidAppearFirstTime.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'ViewDidAppearFirstTime/Classes/**/*'
end
