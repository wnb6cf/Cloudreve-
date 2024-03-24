# 使用 Python 3.11 的官方镜像作为基础镜像
FROM python:3.11.7-alpine

# 设置工作目录为 /src
WORKDIR /src

# 拷贝当前目录的 src 目录到容器的 /src 目录
COPY src /src

# 拷贝 src 目录下的 requirements.txt 文件到容器内的 /src 目录
COPY src/requirements.txt /src/requirements.txt

# 安装 requirements.txt 中的依赖
RUN pip install --no-cache-dir -r requirements.txt

# 启动程序
CMD ["python", "cloudreve_pay.py"]
