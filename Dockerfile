# 使用 Vue CLI 3 安装 Dockerfile 支持  
RUN apt-get update && \  
    apt-get install -y \  
    software-properties-common \  
    python3-pip \  
    python3-dev \  
    build-essential

# 安装依赖项  
RUN pip3 install --no-cache-dir -r requirements.txt

# 设置工作目录  
WORKDIR /app

# 将当前目录下的所有文件复制到容器中的 /app 目录中  
COPY . /app

# 安装 Vue CLI  
RUN npm install -g @vue/cli

# 创建 Vue 项目  
RUN Vue CLI 3 -g create watermark-vue

# 设置项目根目录  
WORKDIR watermark-vue

# 将容器目录中的 /app 目录复制到项目根目录中  
COPY . .

# 安装项目所需的 Vue 插件  
RUN npm install

# 运行项目  
CMD ["vue", "run", "server"]  
