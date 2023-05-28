# watermark-vue

基于Vue写的隐私水印工具

[English](README.md) | [中文介绍](READEME_cn.md)

# 版权声明©️

[LiCENSE](LICENSE.md) | [版权](LICENSE_cn.md)


# 运行

## 用electron去构建

```shell
npm run electron:build
```

## 用pake去构建

```shell
pake https://watermark.emperinter.info/ --name WaterMark --transparent --icon watermark.icns
```

## 使用docker运行

- 打包编译

```shell
npm run build
```

- 构建镜像

```shell
docker build -t watermark -f Dockerfile_prod .
```

- 运行

```shell
docker run -d -p 8080:80 watermark
```

# 赞助

<a href="https://www.buymeacoffee.com/emperinter" target="_blank"><img src="https://bmc-cdn.nyc3.digitaloceanspaces.com/BMC-button-images/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a>

---

| 微信 | 支付宝 |
|:---:|:---:|
|![](src/assets/wx.png)|![](src/assets/zfb.jpg)|


Asset validation failed (90237)
The product archive package's signature is invalid. Ensure that it is signed with your "3rd Party Mac Developer Installer" certificate. (ID: 66a52db5-f844-41d8-9f23-c59703e575ba)

Asset validation failed (90869)
Invalid bundle. The “IDWaterMark.app” bundle supports arm64 but not Intel-based Mac computers. Your build must include the x86_64 architecture to support Intel-based Mac computers. To support arm64 only, your macOS deployment target must be 12.0 or higher. For details, view: https://developer.apple.com/documentation/xcode/building_a_universal_macos_binary. (ID: 65e82116-ac04-44c4-8199-ea038b227cdd)

Asset validation failed (90296)
App sandbox not enabled. The following executables must include the "com.apple.security.app-sandbox" entitlement with a Boolean value of true in the entitlements property list: [( "com.emperinter.idwatermark.pkg/Payload/IDWaterMark.app/Contents/Frameworks/Electron Framework.framework/Versions/A/Helpers/chrome_crashpad_handler", "com.emperinter.idwatermark.pkg/Payload/IDWaterMark.app/Contents/Frameworks/IDWaterMark Helper (GPU).app/Contents/MacOS/IDWaterMark Helper (GPU)", "com.emperinter.idwatermark.pkg/Payload/IDWaterMark.app/Contents/Frameworks/IDWaterMark Helper (Plugin).app/Contents/MacOS/IDWaterMark Helper (Plugin)", "com.emperinter.idwatermark.pkg/Payload/IDWaterMark.app/Contents/Frameworks/IDWaterMark Helper (Renderer).app/Contents/MacOS/IDWaterMark Helper (Renderer)", "com.emperinter.idwatermark.pkg/Payload/IDWaterMark.app/Contents/Frameworks/IDWaterMark Helper.app/Contents/MacOS/IDWaterMark Helper", "com.emperinter.idwatermark.pkg/Payload/IDWaterMark.app/Contents/Frameworks/Squirrel.framework/Versions/A/Resources/ShipIt", "com.emperinter.idwatermark.pkg/Payload/IDWaterMark.app/Contents/MacOS/IDWaterMark" )] Refer to App Sandbox page at https://developer.apple.com/documentation/security/app_sandbox for more information on sandboxing your app. (ID: 7038df36-f9c3-4088-bd02-c0ced00520d1)

Asset validation failed (90236)
Missing required icon. The application bundle does not contain an icon in ICNS format, containing both a 512x512 and a 512x512@2x image. For further assistance, see the Human Interface Guidelines at https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons/. (ID: 7095a995-ea55-414a-906c-321fc82cf426)