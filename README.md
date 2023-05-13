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

# Support Me

<a href="https://www.buymeacoffee.com/emperinter" target="_blank"><img src="https://bmc-cdn.nyc3.digitaloceanspaces.com/BMC-button-images/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a>

---

|wechat pay |alipay|
|:---:|:---:|
|![](src/assets/wx.png)|![](src/assets/zfb.jpg)|