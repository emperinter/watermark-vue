# watermark-vue

An WaterMark Written by Vue

[English](README.md) | [中文介绍](READEME_cn.md)

# CopyRight©️

[LiCENSE](LICENSE.md) | [版权](LICENSE_cn.md)

----

# Project running

## build by electron

> 会自动进行签名校验生成dmg文件

```shell
npm run electron:build
```

## convert dmg to pkg

```shell
./quickpkg dist_electron/WaterMark-0.1.0-arm64.dmg
```

## build by pake

```shell
pake https://watermark.emperinter.info/ --name WaterMark --transparent --icon public/xxx.icns
```

## run by docker

- generate production file

```shell
npm run build
```

- build images

```shell
docker build -t watermark -f Dockerfile_prod .
```

- run

```shell
docker run -d -p 8080:80 watermark
```

# IOS 发布流程

- 配置环境

```shell
export PYTHON_PATH=/Users/emperinter/.pyenv/versions/2.7.18/bin/python
```

- 打包

```shell
npm run electron:build
```


- 转换pkg

```shell
./quickpkg ./dist_electron/IdWaterMark-1.0.0-arm64.dmg
```

- all

```shell
export PYTHON_PATH=/Users/emperinter/.pyenv/versions/2.7.18/bin/python && npm run electron:build && ./quickpkg ./dist_electron/IdWaterMark-1.1.0-arm64.dmg
```

# Support Me

<a href="https://www.buymeacoffee.com/emperinter" target="_blank"><img src="https://bmc-cdn.nyc3.digitaloceanspaces.com/BMC-button-images/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a>

---

|wechat pay |alipay|
|:---:|:---:|
|![](src/assets/wx.png)|![](src/assets/zfb.jpg)|


Asset validation failed (90236)
Missing required icon. The application bundle does not contain an icon in ICNS format, containing both a 512x512 and a 512x512@2x image. For further assistance, see the Human Interface Guidelines at https://developer.apple.com/design/human-interface-guidelines/foundations/app-icons/. (ID: 99305dc4-58c8-4ee4-b19b-350e3d5a6436)

Asset validation failed (90296)

App sandbox not enabled. The following executables must include the "com.apple.security.app-sandbox" entitlement with a Boolean value of true in the entitlements property list: [( "com.emperinter.idwatermark.pkg/Payload/IDWaterMark.app/Contents/Frameworks/Electron Framework.framework/Versions/A/Helpers/chrome_crashpad_handler", "com.emperinter.idwatermark.pkg/Payload/IDWaterMark.app/Contents/Frameworks/IDWaterMark Helper (GPU).app/Contents/MacOS/IDWaterMark Helper (GPU)", "com.emperinter.idwatermark.pkg/Payload/IDWaterMark.app/Contents/Frameworks/IDWaterMark Helper (Plugin).app/Contents/MacOS/IDWaterMark Helper (Plugin)", "com.emperinter.idwatermark.pkg/Payload/IDWaterMark.app/Contents/Frameworks/IDWaterMark Helper (Renderer).app/Contents/MacOS/IDWaterMark Helper (Renderer)", "com.emperinter.idwatermark.pkg/Payload/IDWaterMark.app/Contents/Frameworks/IDWaterMark Helper.app/Contents/MacOS/IDWaterMark Helper", "com.emperinter.idwatermark.pkg/Payload/IDWaterMark.app/Contents/Frameworks/Squirrel.framework/Versions/A/Resources/ShipIt", "com.emperinter.idwatermark.pkg/Payload/IDWaterMark.app/Contents/MacOS/IDWaterMark" )] Refer to App Sandbox page at https://developer.apple.com/documentation/security/app_sandbox for more information on sandboxing your app. (ID: a4cf768a-9630-4dee-a3c4-a507bd58fe05)

Asset validation failed (90237)
The product archive package's signature is invalid. Ensure that it is signed with your "3rd Party Mac Developer Installer" certificate. 

(ID: 4893437c-d9de-49b1-92c9-cb20440a1f51)


productbuild --sign "Developer ID Installer: Your Developer Name (Developer ID)" --component YourApp.pkg /Applications
