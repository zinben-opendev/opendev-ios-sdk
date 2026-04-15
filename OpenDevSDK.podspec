Pod::Spec.new do |s|
  s.name             = 'OpenDevSDK'
  s.version          = '2.0.0'
  s.summary          = 'OpenDev SDK for iOS (prebuilt XCFramework from Kotlin Multiplatform)'
  s.description      = <<-DESC
    OpenDev SDK iOS binary distribution. Built from the Walknote monorepo :core module.
    Consume via CocoaPods :git + :tag pointing at this repository.
  DESC
  s.homepage         = 'https://github.com/zinben-opendev/opendev-ios-sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'OpenDev Team' => 'contact@zinben.com' }
  s.source           = {
    :git => 'https://github.com/zinben-opendev/opendev-ios-sdk.git',
    :tag => "v#{s.version}"
  }
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.9'
  s.vendored_frameworks = 'OpenDevSDK.xcframework'
  s.frameworks = 'Foundation', 'UIKit', 'Security', 'CryptoKit'
  s.libraries = 'c++'
  s.dependency 'GoogleSignIn', '~> 9.0'
  s.dependency 'FBSDKCoreKit', '~> 18.0'
  s.dependency 'FBSDKLoginKit', '~> 18.0'
  s.dependency 'WechatOpenSDK', '~> 2.0.4'
  s.static_framework = true
  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '5.9',
    'DEFINES_MODULE' => 'YES',
    'ENABLE_USER_SCRIPT_SANDBOXING' => 'NO'
  }
end
