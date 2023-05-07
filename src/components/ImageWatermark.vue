<template>
    <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
      <button class="navbar-toggler d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </header>

  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">{{ $t('Buy') }}</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div>
              <br>
              <p><a href="https://www.buymeacoffee.com/emperinter" target="_blank"><img src="https://bmc-cdn.nyc3.digitaloceanspaces.com/BMC-button-images/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a></p>
              <div id="carouselExampleAutoplaying" class="carouser slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item">
                    <img src="../assets/wx.png" width="128" height="128">
                    <br>
                    <label>{{ $t('Wechat Pay')}}</label>     
                  </div>
                  <div class="carousel-item active">
                    <img src="../assets/zfb.jpg" width="128" height="128">     
                    <br>
                    <label>{{ $t('Alipay')}}</label>
                  </div>
                  <!-- <div class="carousel-item">
                    <img src="../assets/paypal.jpg " width="128" height="128"> 
                    <br>
                    <label>{{ $t('Paypal')}}</label>
                  </div> -->
                </div>
                <br>
              </div>
          </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
          <!-- <button v-if="showButton" type="button" class="btn btn-primary" @click="downloadImage">{{ $t('Download') }}</button> -->
          <button type="button" class="btn btn-success" @click="downloadImage" :disabled="countdown > 0">{{ $t('Download') }}{{countdown}}s</button>
        </div>
      </div>
    </div>
  </div>


  <div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-body-tertiary sidebar collapse" style="height: 100vh;">
      <div class="position-sticky pt-3 sidebar-sticky">
        <ul class="nav flex-column">
            <li class="nav-item d-flex justify-content-center">
                <img src="../assets/logo.png" alt="logo" style="width: 50px; height: 50px; margin-bottom:10px;">        
            </li>
            <li class="nav-item">
                <input class="form-control" type="file" placeholder="file" aria-label="file" @change="handleFileUpload" style="background-color: rgba(255, 0, 0, 0.594);">
            </li>
            <li class="nav-item">
                <label>{{ $t('Watermark Text') }}</label>
                <input class="form-control" v-model="watermarkText" @input="addWatermark">
            </li>
            <li>
              <label>{{ $t('Font Size')}} </label>
              <input type="number" class="form-control" v-model.number="fontSize" @change="addWatermark">
            </li>
            <li>
              <label>{{ $t('Font Angle')}} </label>
              <input type="number" class="form-control" v-model.number="angle" @change="addWatermark">
            </li>
            <li>
              <label>{{ $t('WaterMark Padding')}} </label>
              <input type="number" class="form-control" v-model.number="padding" @change="addWatermark">
            </li>
            <li>
              <label>{{ $t('Font Color')}} </label>
              <input type="color" class="form-control" v-model="color" @change="addWatermark">
            </li>
            <li>
              <label>{{ $t('Font Opacity')}} {{this.opacity}} </label>
              <input type="range" class="form-range" v-model.number="opacity" min="0" max="1" step="0.05" @change="addWatermark"  style="background-color:rgba(0, 255, 255, 0.05);border-radius: 18px;">
            </li>
            <li>
              <button class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">{{ $t('Download') }}</button>
            </li>            
        </ul>
          <hr>
          <div>
              <p><a href="https://www.buymeacoffee.com/emperinter" target="_blank"><img src="https://bmc-cdn.nyc3.digitaloceanspaces.com/BMC-button-images/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a></p>
              <div id="carouselExampleAutoplaying" class="carouser slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item">
                    <img src="../assets/wx.png" width="128" height="128">
                    <br>
                    <label>{{ $t('Wechat Pay')}}</label>     
                  </div>
                  <div class="carousel-item active">
                    <img src="../assets/zfb.jpg" width="128" height="128">     
                    <br>
                    <label>{{ $t('Alipay')}}</label>
                  </div>
                  <!-- <div class="carousel-item">
                    <img src="../assets/paypal.jpg " width="128" height="128"> 
                    <br>
                    <label>{{ $t('Paypal')}}</label>
                  </div> -->
                </div>
              </div>
          </div>
          <hr>
          <div>
              Copyright © <a href="mailto:emperinter@outlook.com">emperinter</a>
          </div>
      </div>
    </nav>
      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4" style="background-color: #00000083 !important;border-radius: 8px;overflow: auto;">
        <canvas ref="canvas" class="my-4 w-100"></canvas>
      </main>
  </div>
  </div>
</template>

<style scoped>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }
      .bd-mode-toggle {
        z-index: 1500;
      }

      canavas {
        -webkit-touch-callout: none; /* 禁止长按链接与图片弹出菜单 */
        -webkit-user-select: none; /* 禁止选中文字 */
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        pointer-events: none; /* 禁止鼠标事件 */
      }

      a:hover{
        text-decoration: none;
        background-color: yellow;
        border-radius: 18px;
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
        imageSrc: null,
        // showButton: false
        countdown: 5
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
          const watermarkHeight = 28;
          const watermarkPadding = this.padding;
          const watermarkMaxX = canvas.width;
          const watermarkMaxY = canvas.height;
          const angle = this.angle * Math.PI / 360;
          var x = 0;
          var y = 0;
          for (let i = 0; i < 1000; i++) {
            watermarkContext.save();
            watermarkContext.translate(x, y);
            watermarkContext.rotate(angle);
            watermarkContext.fillText(this.watermarkText, 0, 0, watermarkMaxX);
            watermarkContext.restore();
            x += watermarkWidth + watermarkPadding;
            if (x > watermarkMaxX) {
              x = 0;
              y += watermarkHeight + watermarkPadding;
              if (y > watermarkMaxY + watermarkHeight + watermarkPadding) {
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
        this.countdown = 5;
      },
    },
    mounted() {
      // 初始化canvas
      // const canvas = this.$refs.canvas;
      // const ctx = canvas.getContext('2d');
      // const img = new Image();
      // img.src = '../assets/wx.png';    
      // img.onload = function() {
      //   canvas.width = img.width;
      //   canvas.height = img.height;
      //   ctx.clearRect(0, 0, canvas.width, canvas.height);
      //   ctx.drawImage(img, img.width, img.height);
      // };

      // 倒计时
      // setTimeout(() => {
      //   this.showButton = true;
      // }, 5000);
      setInterval(() => {
        if (this.countdown > 0) {
          this.countdown--;
        }
      }, 1000);

      setTimeout(() => {
        this.countdown = 0;
      }, 5000);

      // 禁止截屏
      document.addEventListener('keydown', function(e) {
        if (e.keyCode === 44 || e.keyCode === 91 || e.keyCode === 92 || e.keyCode === 145) {
          e.preventDefault();
        }
      });

      // 禁止右击下载
      document.addEventListener('contextmenu', function(e) {
        e.preventDefault();
      });
    }
  };
  </script>
  