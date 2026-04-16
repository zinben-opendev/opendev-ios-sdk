# OpenDev SDK（iOS）

**文档语言：** 默认以英文 [`README.md`](README.md) 为准；本页为简体中文补充。

OpenDev SDK 为 Kotlin Multiplatform 客户端库（认证、支付、同步、存储等）。本仓库提供 **预构建 `OpenDevSDK.xcframework`** 与 **CocoaPods podspec**，便于在未走 Maven Central / Trunk 时通过 GitHub 集成。

> **品牌：** 对外产品名为 **OpenDev SDK**。文中若出现 **Walknote**，仅作示例宿主应用说明；第三方应用应使用自有品牌。

## 技术栈与语言

| 方面 | 说明 |
|------|------|
| **SDK 源码实现**（不在本仓） | **Kotlin Multiplatform**，Apple 目标编译为 **framework** 二进制，打包进 **XCFramework**。 |
| **本仓产物** | 预编译 **XCFramework**；**`OpenDevSDK.podspec`** 为 **Ruby**（CocoaPods 元数据，非 SDK 业务逻辑）。 |
| **集成方应用** | 通常为 **Swift** 或 **Objective-C**（Xcode / CocoaPods 或手动嵌入）。 |

## 环境要求

- iOS 13.0+
- Xcode 15+
- Swift 5.9+
- 推荐使用 CocoaPods，亦可手动嵌入 XCFramework

## 安装（GitHub 产物 / `:git`）

请固定 **Git tag**（例如 `v2.0.0`），在 `Podfile` 中使用 `:git` + `:tag`：

```ruby
platform :ios, '13.0'
use_frameworks! :linkage => :static

target 'YourApp' do
  pod 'OpenDevSDK',
    :git => 'https://github.com/zinben-opendev/opendev-ios-sdk.git',
    :tag => 'v2.0.0'
end
```

执行：

```bash
pod install --repo-update
```

**GoogleSignIn / Facebook / 微信** 等 Pod 版本约束以 **`OpenDevSDK.podspec`** 为准，并与构建本 XCFramework 时 KMP 侧 CocoaPods 配置一致。

## 集成概要

1. 使用 CDN / channel / environment 等参数 **初始化** SDK（详见框架暴露的 Swift API 或你们的 OpenDev 集成文档）。
2. 在渠道配置启用时，使用支持的提供方 **登录**（Google、Facebook、Apple、微信等）。
3. 通过 SDK 存储 API **管理令牌**；勿在客户端硬编码密钥。

Wasm / TypeScript 侧见 **`opendev-web-sdk`** 仓库与 **`@opendev/sdk`** 包。

## 供应链

- **`CHECKSUMS.sha256`** — 下载后校验二进制完整性。
- **`sbom/`** — 工具链与 Pod 约束快照（非完整 CycloneDX SBOM）。

## Git LFS（可选）

若 GitHub 提示大文件，可将 **`gitattributes.template`** 复制为仓库根目录 **`.gitattributes`**，执行 **`git lfs install`**，再按 Git LFS 文档迁移大二进制。

## 更新日志

见 [CHANGELOG.md](CHANGELOG.md)。

## 许可证

MIT — 见 [LICENSE](LICENSE)。

## 联系

- Email: contact@zinben.com
- GitHub: [zinben-opendev](https://github.com/zinben-opendev)
