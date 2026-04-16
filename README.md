# OpenDev SDK for iOS

**Documentation:** English (default) · [简体中文](README.zh-CN.md)

OpenDev SDK is a Kotlin Multiplatform client library (authentication, payments, sync, storage). This repository ships a **prebuilt `OpenDevSDK.xcframework`** and a **CocoaPods podspec** for integration without Maven Central or CocoaPods Trunk.

> **Brand:** The public product name is **OpenDev SDK**. Example references to the **Walknote** app illustrate real-world integration only; third-party apps should use their own branding.

## Technical stack (languages)

| Aspect | What this repo contains / uses |
|--------|--------------------------------|
| **SDK implementation (source, not in this repo)** | **Kotlin Multiplatform** — Apple targets compiled to native **framework** binaries inside the XCFramework. |
| **Artifacts here** | Precompiled **XCFramework** (device + simulator slices); **`OpenDevSDK.podspec`** is **Ruby** (CocoaPods metadata only). |
| **Typical consumer apps** | **Swift** or **Objective-C** in Xcode, via CocoaPods or manual embedding. |

## Requirements

- iOS 13.0+
- Xcode 15+
- Swift 5.9+
- CocoaPods (recommended) or manual XCFramework embedding

## Installation (GitHub binary distribution)

Pin a **Git tag** (for example `v2.0.0`) and use CocoaPods `:git` + `:tag`:

```ruby
platform :ios, '13.0'
use_frameworks! :linkage => :static

target 'YourApp' do
  pod 'OpenDevSDK',
    :git => 'https://github.com/zinben-opendev/opendev-ios-sdk.git',
    :tag => 'v2.0.0'
end
```

Then:

```bash
pod install --repo-update
```

Exact third-party Pod version constraints (**GoogleSignIn**, **Facebook**, **WeChat**) are declared in **`OpenDevSDK.podspec`** and match the Kotlin Multiplatform CocoaPods integration used to build this XCFramework.

### Manual XCFramework

1. Check out the tag you trust (or download a release asset if published).
2. Add **`OpenDevSDK.xcframework`** to Xcode → *Frameworks, Libraries, and Embedded Content* (embed if required by your app type).
3. You are still responsible for linking the same native SDKs your build expects (see podspec dependencies).

## Integration overview

1. **Initialize** the SDK with your CDN / channel / environment configuration (see your OpenDev integration guide or generated Swift API from the framework).
2. **Sign in** with supported providers (Google, Facebook, Apple, WeChat) where enabled in your channel configuration.
3. **Handle tokens** via the SDK storage APIs; never hard-code secrets in the client.

For TypeScript / Wasm consumers, see the **`opendev-web-sdk`** repository and the **`@opendev/sdk`** package.

## Supply chain

- **`CHECKSUMS.sha256`** — verify binaries after download.
- **`sbom/`** — resolved toolchain metadata and iOS Pod constraint snapshot (not a full CycloneDX SBOM).

## Git LFS (optional)

If GitHub warns about large blobs, copy **`gitattributes.template`** to **`.gitattributes`** in this repo root, run **`git lfs install`**, and migrate large binaries per Git LFS documentation.

## Changelog

See [CHANGELOG.md](CHANGELOG.md).

## License

MIT — see [LICENSE](LICENSE).

## Contact

- Email: contact@zinben.com
- GitHub: [zinben-opendev](https://github.com/zinben-opendev)
