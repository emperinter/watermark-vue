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
pake https://watermark.emperinter.info/ --name WaterMark --transparent --icon public/xxx.icns
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