# OpenDevSDK for iOS

OpenDev SDK for iOS — Kotlin Multiplatform SDK used by the Walknote application.

## Features

- **Authentication**: Support for Google, Facebook, Apple, and WeChat sign-in
- **Payment Processing**: Integrated payment solutions
- **Data Synchronization**: Efficient cloud data sync
- **Security**: AES-256-GCM encryption
- **Configuration Management**: Dynamic configuration download

## Requirements

- iOS 13.0+
- Xcode 15.0+
- Swift 5.9+

## Installation

### CocoaPods

Add the following to your `Podfile`:

```ruby
platform :ios, '13.0'
use_frameworks!

target 'YourApp' do
  pod 'OpenDevSDK', '~> 1.0.0'
end
```

Then run:

```bash
pod install
```

### Manual Installation

1. Download `OpenDevSDK.xcframework` from the [Releases](https://github.com/zinben-opendev/opendev-ios-sdk/releases) page
2. Drag it into your Xcode project
3. Add it to "Frameworks, Libraries, and Embedded Content" with "Embed & Sign"

## Usage

### Initialize SDK

```swift
import OpenDevSDK

// Initialize the SDK
let config = OpenDevConfig(
    cdnBaseUrl: "https://cdn.example.com/sdk",
    cdnToken: "your-token",
    channelKey: "google_global",
    environment: .staging
)

OpenDevSDK.shared.initialize(config: config)
```

### Authentication

```swift
// Google Sign-In
OpenDevSDK.shared.login(method: .google) { result in
    switch result {
    case .success(let user):
        print("Logged in: \(user.id)")
    case .failure(let error):
        print("Login failed: \(error)")
    }
}

// Logout
OpenDevSDK.shared.logout()
```

## Dependencies

This SDK includes the following third-party dependencies:

- GoogleSignIn (~> 9.0)
- FBSDKCoreKit (~> 18.0)
- FBSDKLoginKit (~> 18.0)
- WechatOpenSDK (~> 2.0.4)

## Documentation

For detailed documentation, please visit our [Wiki](https://github.com/zinben-opendev/opendev-ios-sdk/wiki).

## Related distributions

- **JavaScript / TypeScript (Kotlin/Wasm)**: NPM package [`@opendev/sdk`](https://www.npmjs.com/package/@opendev/sdk) — sources and publish flow live in the main Walknote monorepo under `publishing/npm-sdk/` (see `opendev-web-sdk`).

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for release notes.

## License

OpenDevSDK is available under the MIT license. See the [LICENSE](LICENSE) file for more info.

## Contact

- Email: contact@zinben.com
- GitHub: [@zinben-opendev](https://github.com/zinben-opendev)

