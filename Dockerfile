# 使用合适的基础镜像
FROM python:3.9

# 设置工作目录
WORKDIR /app

# 复制项目文件到容器
COPY . /app/

# 安装项目依赖
RUN pip install -r requirements.txt

# 等待数据库准备好后，运行 Django 项目
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
