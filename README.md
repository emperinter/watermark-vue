# watermark-vue

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).


----

## Project Package

### test

```shell
npm run electron:serve
```


### build

```shell
npm run electron:build
```

### pake build

```shell
pake https://watermark.emperinter.info/ --name WaterMark --transparent --icon public/xxx.icns
```
---

## docker 

```shell
npm run build
```

```shell
docker build -t watermark -f Dockerfile_prod .
```

```shell
docker run -d -p 8080:80 watermark
```

