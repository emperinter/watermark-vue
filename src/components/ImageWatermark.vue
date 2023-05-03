<template>
        <!-- <el-container> -->
        <el-container class="layout-container-demo" style="height: 500px">
            <el-header>
                <img src="../assets/logo.png" width="58" height="58">
                <!-- <h1>{{ $t('Image Watermark') }}</h1> -->
            </el-header>
            <el-container>
                <el-aside width="20%">
                    <el-scrollbar>
                      <div class="options">
                          <div class="option">  
                              <input type="file" @change="handleFileUpload" style="border-radius: 5px;background-color: burlywood; margin: 5px; padding: 5px;">
                          </div>
                          <div>                        
                              <label>{{ $t('Watermark Text') }}</label>
                          </div>
                          <br>
                          <div class="option">
                              <el-input v-model="watermarkText" @change="addWatermark"></el-input>
                          </div>
                          <div>
                              <label>{{ $t('Font Size')}} </label>
                          </div>
                          <div class="option">
                              <el-input-number v-model.number="fontSize" @change="addWatermark"></el-input-number>
                          </div>
                          <div>
                            <label>{{ $t('Font Angle')}} </label>
                          </div>
                          <div class="option">
                              <el-input-number v-model.number="angle" @change="addWatermark"></el-input-number>
                          </div>
                          <div>
                            <label>{{ $t('WaterMark Padding')}} </label>
                          </div>      
                          <div class="option">
                              <el-input-number v-model.number="padding" @change="addWatermark"></el-input-number>
                          </div>      
                          <div> 
                            <label>{{ $t('Font Color')}} </label>
                          </div>
                          <div class="option">
                              <el-color-picker v-model="color" @change="addWatermark"></el-color-picker>
                          </div>
                          <div> 
                            <label>{{ $t('Font Opacity')}} </label>
                          </div>
                          <div class="option">
                              <el-slider v-model.number="opacity" :min="0" :max="1" :step="0.05" @change="addWatermark"></el-slider>
                          </div>
                          <div class="option">
                              <el-button type="primary" @click="addWatermark">{{ $t('Add Watermark')}}</el-button>
                          </div>
                          <div class="option">
                              <el-button type="danger" @click="downloadImage">{{ $t('Download') }}</el-button>
                          </div>
                      </div>
                      <hr>
                      <div>
                          <h1><a href="https://www.buymeacoffee.com/emperinter" target="blank" style="color: yellowgreen;">{{ $t('Buy') }}</a></h1>
                          <img src="../assets/wx.png" width="128" height="128">            
                          <img src="../assets/zfb.jpg" width="128" height="128">
                          <img src="../assets/paypal.jpg " width="128" height="128">

                      </div>
                      <hr>
                      <div>
                        {{ $t('Information') }}
                      </div>
                      <hr>
                      <div>
                          <!-- <a href="https://github.com/emperinter/watermark-vue" target="blank">watermark-vue</a> -->
                          <a href="https://github.com/emperinter/watermark-vue" target="_blank"><svg t="1649902603536" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="7752" width="36" height="36"><path d="M512 42.666667A464.64 464.64 0 0 0 42.666667 502.186667 460.373333 460.373333 0 0 0 363.52 938.666667c23.466667 4.266667 32-9.813333 32-22.186667v-78.08c-130.56 27.733333-158.293333-61.44-158.293333-61.44a122.026667 122.026667 0 0 0-52.053334-67.413333c-42.666667-28.16 3.413333-27.733333 3.413334-27.733334a98.56 98.56 0 0 1 71.68 47.36 101.12 101.12 0 0 0 136.533333 37.973334 99.413333 99.413333 0 0 1 29.866667-61.44c-104.106667-11.52-213.333333-50.773333-213.333334-226.986667a177.066667 177.066667 0 0 1 47.36-124.16 161.28 161.28 0 0 1 4.693334-121.173333s39.68-12.373333 128 46.933333a455.68 455.68 0 0 1 234.666666 0c89.6-59.306667 128-46.933333 128-46.933333a161.28 161.28 0 0 1 4.693334 121.173333A177.066667 177.066667 0 0 1 810.666667 477.866667c0 176.64-110.08 215.466667-213.333334 226.986666a106.666667 106.666667 0 0 1 32 85.333334v125.866666c0 14.933333 8.533333 26.88 32 22.186667A460.8 460.8 0 0 0 981.333333 502.186667 464.64 464.64 0 0 0 512 42.666667" fill="#231F20" p-id="7753"></path></svg></a>
                          <a href="mailto:blog@emperinter.info" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="36" height="36"><path fill="none" d="M0 0h24v24H0z"></path><path d="M3 3h18a1 1 0 0 1 1 1v16a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1zm17 4.238l-7.928 7.1L4 7.216V19h16V7.238zM4.511 5l7.55 6.662L19.502 5H4.511z" fill="rgba(50,152,219,1)"></path></svg></a>
                      </div>
                    </el-scrollbar>
                </el-aside>
                <el-main>
                    <div class="canvas-container">
                        <canvas ref="canvas"></canvas>
                    </div>
                </el-main>
            </el-container>
            <!-- <el-footer>
            </el-footer> -->
        </el-container>
</template>

<style scoped>

.layout-container-demo .el-header {
  position: relative;
  background-color: #464849;
  color: var(--el-text-color-primary);
  margin-bottom: 10px;
  padding-bottom: 10px;
  border-radius: 10;
}
.layout-container-demo .el-aside {
  color: var(--el-text-color-primary);
  background: var(--el-color-primary-light-8);
  height: 100%;
  width: 20%;
  margin-right: 10px;
  border-radius: 10;
}

.layout-container-demo .el-main {
  padding: 0;
  height: 100%;
  width: 100%;
  min-width: 800px;
  background: #f8ff6b;
}


.options {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
  width: 100%;
  margin-right: 20px;
  margin-left: 20px;
  margin: 20px;
}

.option {
  display: flex;
  flex-direction: row;
  justify-content: flex-start;
  align-items: center;
  margin-bottom: 10px;
  width: 88%;
}

.canvas-container {
  flex: 1;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 10px;
  height: 100%;
  background-color: rgb(0, 0, 0);
}

canvas {
  max-width: 80%;
  max-height: 80%;
}
</style>

  
  <script>
  export default {
    data() {
      return {
        watermarkText: this.$t('WaterMarkText'),
        fontSize: 28,
        color: '#000000',
        angle: 45,
        opacity: 0.6,
        padding: 40,
        imageLoaded: false,
        imageSrc: null
        };
    },
    methods: {
      handleFileUpload(event) {
        const file = event.target.files[0];
        const reader = new FileReader();
  
        reader.onload = (event) => {
          this.imageLoaded = true;
          this.imageSrc = event.target.result;
          this.drawWatermark();
        };
  
        reader.readAsDataURL(file);
      },
      drawWatermark() {
        const canvas = this.$refs.canvas;
        const context = canvas.getContext('2d');
        const img = new Image();
        img.onload = () => {
          canvas.width = img.width;
          canvas.height = img.height;
          context.drawImage(img, 0, 0, canvas.width, canvas.height);
          const watermarkCanvas = document.createElement('canvas');
          watermarkCanvas.width = canvas.width;
          watermarkCanvas.height = canvas.height;
          const watermarkContext = watermarkCanvas.getContext('2d');
          watermarkContext.font = `${this.fontSize}px Arial`;
          watermarkContext.fillStyle = `${this.color}${Math.floor(this.opacity * 255).toString(16)}`
          watermarkContext.textAlign = 'center';
          watermarkContext.textBaseline = 'middle';
          const watermarkWidth = watermarkContext.measureText(this.watermarkText).width;
          const watermarkHeight = this.fontSize;
          const watermarkPadding = this.padding;
          const watermarkMaxX = canvas.width - watermarkWidth - watermarkPadding;
          const watermarkMaxY = canvas.height - watermarkHeight - watermarkPadding;
          const angle = this.angle * Math.PI / 380;
          var x = 0;
          var y = 0;
          for (let i = 0; i < 1000; i++) {
            watermarkContext.save();
            watermarkContext.translate(x + watermarkWidth, y + watermarkHeight);
            watermarkContext.rotate(angle);
            watermarkContext.fillText(this.watermarkText, 0, 0, watermarkMaxX - x);
            watermarkContext.restore();
            x += watermarkWidth + watermarkPadding;
            if (x > watermarkMaxX) {
              x = 0;
              y += watermarkHeight + watermarkPadding;
              if (y > watermarkMaxY) {
                break;
              }
            }
          }
          const watermarkImg = new Image();
          watermarkImg.onload = () => {
            context.clearRect(0, 0, canvas.width, canvas.height);
            context.drawImage(img, 0, 0, canvas.width, canvas.height);
            context.drawImage(watermarkImg, 0, 0);
          };
          watermarkImg.src = watermarkCanvas.toDataURL();
        };
        img.src = this.imageSrc;
      },
      addWatermark() {
        if (this.imageLoaded) {
          this.drawWatermark();
        }
      },
      downloadImage() {
        const canvas = this.$refs.canvas;
        const dataURL = canvas.toDataURL('image/png');
        const link = document.createElement('a');
        link.download = 'watermarked-image.png';
        link.href = dataURL;
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);
      },
    } 
  };
  </script>
  