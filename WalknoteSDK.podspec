Pod::Spec.new do |s|
  # ============================================
  # Basic Information
  # ============================================
  s.name             = 'WalknoteSDK'
  s.version          = '1.0.0'
  s.summary          = 'Walknote SDK for iOS - A minimalist lifestyle application SDK'
  
  s.description      = <<-DESC
    Walknote SDK provides core functionality for the Walknote application,
    including authentication, payment processing, and data synchronization.
    Built with Kotlin Multiplatform for seamless cross-platform development.
  DESC

  # ============================================
  # Project Information
  # ============================================
  s.homepage         = 'https://github.com/syoohao/walknote-ios-sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Walknote Team' => 'contact@zinben.com' }
  
  # ============================================
  # Source Repository
  # ============================================
  s.source           = { 
    :git => 'https://github.com/syoohao/walknote-ios-sdk.git',
    :tag => "v#{s.version}"
  }

  # ============================================
  # Platform Support
  # ============================================
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.9'

  # ============================================
  # XCFramework Configuration
  # ============================================
  s.vendored_frameworks = 'WalknoteSDK.xcframework'
  
  # ============================================
  # System Framework Dependencies
  # ============================================
  s.frameworks = 'Foundation', 'UIKit', 'Security', 'CryptoKit'
  
  # ============================================
  # C++ Standard Library (Required by Kotlin Native)
  # ============================================
  s.libraries = 'c++'

  # ============================================
  # Third-party SDK Dependencies
  # ============================================
  s.dependency 'GoogleSignIn', '~> 9.0'
  s.dependency 'FBSDKCoreKit', '~> 18.0'
  s.dependency 'FBSDKLoginKit', '~> 18.0'
  s.dependency 'WechatOpenSDK', '~> 2.0.4'

  # ============================================
  # Static Framework Configuration
  # ============================================
  s.static_framework = true

  # ============================================
  # Metadata
  # ============================================
  s.social_media_url = 'https://github.com/syoohao'
  s.documentation_url = 'https://github.com/syoohao/walknote-ios-sdk/wiki'
  s.changelog = 'https://github.com/syoohao/walknote-ios-sdk/blob/main/CHANGELOG.md'
  
  # ============================================
  # Build Configuration
  # ============================================
  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '5.9',
    'DEFINES_MODULE' => 'YES',
    'ENABLE_USER_SCRIPT_SANDBOXING' => 'NO'
  }

  # ============================================
  # Resource Files (if any)
  # ============================================
  # s.resources = 'Resources/**/*.{png,json,xcassets}'
  # s.resource_bundles = {
  #   'WalknoteSDK' => ['Resources/**/*.{png,json,xcassets}']
  # }
end

