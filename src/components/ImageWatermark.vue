<template>
      <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
      <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
      </symbol>
      <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"/>
      </symbol>
      <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"/>
      </symbol>
      <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
      </symbol>
    </svg>

    <div class="dropdown position-fixed bottom-0 end-0 mb-3 me-3 bd-mode-toggle">
      <button class="btn btn-bd-primary py-2 dropdown-toggle d-flex align-items-center"
              id="bd-theme"
              type="button"
              aria-expanded="false"
              data-bs-toggle="dropdown"
              aria-label="Toggle theme (auto)">
        <svg class="bi my-1 theme-icon-active" width="1em" height="1em"><use href="#circle-half"></use></svg>
        <span class="visually-hidden" id="bd-theme-text">Toggle theme</span>
      </button>
      <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bd-theme-text">
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light" aria-pressed="false">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#sun-fill"></use></svg>
            Light
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="dark" aria-pressed="false">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#moon-stars-fill"></use></svg>
            Dark
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
        <li>
          <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="auto" aria-pressed="true">
            <svg class="bi me-2 opacity-50 theme-icon" width="1em" height="1em"><use href="#circle-half"></use></svg>
            Auto
            <svg class="bi ms-auto d-none" width="1em" height="1em"><use href="#check2"></use></svg>
          </button>
        </li>
      </ul>
    </div>

    
    <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
      <button class="navbar-toggler d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </header>
  <div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-body-tertiary sidebar collapse" style="height: 100vh;">
      <div class="position-sticky pt-3 sidebar-sticky">
        <ul class="nav flex-column">
            <li class="nav-item d-flex justify-content-center">
                <img src="../assets/logo.png" alt="logo" style="width: 50px; height: 50px; margin-bottom:10px;">
            </li>
            <li class="nav-item">
                <input class="form-control" type="file" placeholder="file" aria-label="file" @change="handleFileUpload" >
            </li>
            <li class="nav-item">
                <label>{{ $t('Watermark Text') }}</label>
                <input class="form-control" v-model="watermarkText" @change="addWatermark">
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
              <input type="range" class="form-range" v-model.number="opacity" min="0" max="1" step="0.05" @change="addWatermark">
            </li>
            <li>
              <button class="btn btn-primary" @click="addWatermark">{{ $t('Add Watermark')}}</button>
            </li>
            <li>
              <button class="btn btn-danger" @click="downloadImage">{{ $t('Download') }}</button>
            </li>            
        </ul>

          <hr>
          <div>
              <!-- <p><a href="https://www.buymeacoffee.com/emperinter" target="blank" style="color: yellowgreen;">{{ $t('Buy') }}</a></p> -->
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
                  <div class="carousel-item">
                    <img src="../assets/paypal.jpg " width="128" height="128"> 
                    <br>
                    <label>{{ $t('Paypal')}}</label>
                  </div>
                </div>
                <!-- <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">{{ $t('Previous')}}</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">{{ $t('Next')}}</span>
                </button> -->
              </div>
          </div>
          <hr>
          <!-- <div>
            {{ $t('Information') }}
          </div> 
          <hr> -->
          <div>
              <!-- <a href="https://github.com/emperinter/watermark-vue" target="_blank"><svg t="1649902603536" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="7752" width="36" height="36"><path d="M512 42.666667A464.64 464.64 0 0 0 42.666667 502.186667 460.373333 460.373333 0 0 0 363.52 938.666667c23.466667 4.266667 32-9.813333 32-22.186667v-78.08c-130.56 27.733333-158.293333-61.44-158.293333-61.44a122.026667 122.026667 0 0 0-52.053334-67.413333c-42.666667-28.16 3.413333-27.733333 3.413334-27.733334a98.56 98.56 0 0 1 71.68 47.36 101.12 101.12 0 0 0 136.533333 37.973334 99.413333 99.413333 0 0 1 29.866667-61.44c-104.106667-11.52-213.333333-50.773333-213.333334-226.986667a177.066667 177.066667 0 0 1 47.36-124.16 161.28 161.28 0 0 1 4.693334-121.173333s39.68-12.373333 128 46.933333a455.68 455.68 0 0 1 234.666666 0c89.6-59.306667 128-46.933333 128-46.933333a161.28 161.28 0 0 1 4.693334 121.173333A177.066667 177.066667 0 0 1 810.666667 477.866667c0 176.64-110.08 215.466667-213.333334 226.986666a106.666667 106.666667 0 0 1 32 85.333334v125.866666c0 14.933333 8.533333 26.88 32 22.186667A460.8 460.8 0 0 0 981.333333 502.186667 464.64 464.64 0 0 0 512 42.666667" fill="#231F20" p-id="7753"></path></svg></a> -->
              <!-- <a href="mailto:blog@emperinter.info" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="36" height="36"><path fill="none" d="M0 0h24v24H0z"></path><path d="M3 3h18a1 1 0 0 1 1 1v16a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1zm17 4.238l-7.928 7.1L4 7.216V19h16V7.238zM4.511 5l7.55 6.662L19.502 5H4.511z" fill="rgba(50,152,219,1)"></path></svg></a> -->
              <!-- <br> -->
              CopyRight © <a href="mailto:emperinter@outlook.com">emperinter</a>
          </div>
      </div>
    </nav>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4" style="background-color: #000000 !important;">
      <canvas ref="canvas" class="my-4 w-100" width="100%" height="100%"></canvas>
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
  