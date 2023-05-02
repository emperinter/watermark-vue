<template>
    <div class="common-layout">
        <el-container>
            <el-header>
                <h1 style="font-size: 18px;">{{ $t('Image Watermark') }}</h1>
            </el-header>
            <el-container>
                <el-aside width="20%">
                    <div class="options">
                        <div class="option">
                            <!-- <el-upload
                            v-model:file-list="fileList"
                            class="upload-demo"
                            action="https://run.mocky.io/v3/9d059bf9-4660-45f2-925d-ce80ad6c4d15"
                            multiple
                            :on-preview="handlePreview"
                            :on-remove="handleRemove"
                            :before-remove="beforeRemove"
                            :limit="3"
                            :on-exceed="handleExceed">
                            <el-button type="primary">Click to upload</el-button>
                            <input
                                ref="uploadInput"
                                type="file"
                                style="display: none;"
                                @change="handleFileUpload"
                                multiple
                                />
                            </el-upload> -->
                            <input type="file" @change="handleFileUpload">
                        </div>
                        <div>                        
                            <label>{{ $t('Watermark Text') }}</label>
                        </div>
                        <br>
                        <div class="option">
                            <el-input v-model="watermarkText" @change="addWatermark"></el-input>
                        </div>
                        <div class="option">
                            <label>{{ $t('Font Size')}}</label>
                            <el-input-number v-model.number="fontSize" @change="addWatermark"></el-input-number>
                        </div>
                        <div class="option">
                            <label>{{ $t('Font Angle')}}</label>
                            <el-input-number v-model.number="angle" @change="addWatermark"></el-input-number>
                        </div>      
                        <div class="option">
                            <label>{{ $t('WaterMark Padding')}}</label>
                            <el-input-number v-model.number="padding" @change="addWatermark"></el-input-number>
                        </div>      
                        <div class="option">
                            <label>{{ $t('Font Color')}}:</label>
                            <el-color-picker v-model="color" @change="addWatermark"></el-color-picker>
                        </div>
                        <div class="option">
                            <label>{{ $t('Font Opacity')}}:</label>
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

                    </div>
                    <hr>
                    <div>
                        <a href="https://github.com/emperinter/watermark-vue" target="blank">watermark-vue</a>
                    </div>

                </el-aside>
                <el-main>
                    <div class="canvas-container">
                        <canvas ref="canvas"></canvas>
                    </div>
                </el-main>
            </el-container>
            <el-footer>
            </el-footer>
        </el-container>
    </div>
</template>

<style scoped>
.options {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
  width: 100%;
  margin-right: 20px;
  margin-left: 20px;
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
  max-width: 100%;
  max-height: 100%;
}
</style>

  
  <script>
  export default {
    data() {
      return {
        watermarkText: this.$t('WaterMarkText'),
        fontSize: 28,
        color: '#000000',
        angle: -45,
        opacity: 0.5,
        padding: 40,
        imageLoaded: false,
        imageSrc: null,
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
          const angle = (Math.random() - 0.5) * Math.PI / 4;
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
    },
  };
  </script>
  