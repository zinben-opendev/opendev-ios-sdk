# Changelog

All notable changes to OpenDevSDK will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- README: link to cross-platform NPM package `@opendev/sdk` for Wasm/JS consumers.

## [1.0.0] - 2024-12-18

### Added
- Initial release of OpenDevSDK for iOS
- Authentication support:
  - Google Sign-In
  - Facebook Login
  - Apple Sign-In
  - WeChat Login
- Payment processing integration
- Data synchronization with cloud services
- AES-256-GCM encryption for secure data handling
- Dynamic configuration management
- Support for iOS 13.0+
- Built with Kotlin Multiplatform for cross-platform compatibility

### Dependencies
- GoogleSignIn ~> 9.0
- FBSDKCoreKit ~> 18.0
- FBSDKLoginKit ~> 18.0
- WechatOpenSDK ~> 2.0.4

